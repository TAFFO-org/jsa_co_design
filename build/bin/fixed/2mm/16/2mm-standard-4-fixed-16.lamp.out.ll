; ModuleID = './build/bin/fixed/2mm/16/2mm-standard-4-fixed-16.out.ll'
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
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
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
  %tmp.u7_25fixp = alloca [8 x [10 x i32]], align 4, !taffo.info !47
  %A.u3_29fixp = alloca [8 x [12 x i32]], align 4, !taffo.info !50
  %B.u3_29fixp = alloca [12 x [10 x i32]], align 4, !taffo.info !53
  %C.u3_29fixp = alloca [10 x [14 x i32]], align 4, !taffo.info !55
  %D.u11_21fixp = alloca [8 x [14 x i32]], align 4, !taffo.info !57, !taffo.target !59
  %arraydecay.u3_29fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay8.u3_29fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u3_29fixp, i32 0, i32 0, !taffo.info !53
  %arraydecay9.u3_29fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u3_29fixp, i32 0, i32 0, !taffo.info !55
  %arraydecay10.u11_21fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u11_21fixp, i32 0, i32 0, !taffo.info !57, !taffo.target !59
  %arraydecay11.u7_25fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u7_25fixp, i32 0, i32 0, !taffo.info !47
  call void @init_array.4_fixp(i32 8, i32 10, i32 12, i32 14, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [12 x i32]* %arraydecay.u3_29fixp, [10 x i32]* %arraydecay8.u3_29fixp, [14 x i32]* %arraydecay9.u3_29fixp, [14 x i32]* %arraydecay10.u11_21fixp, [10 x i32]* %arraydecay11.u7_25fixp), !taffo.info !60, !taffo.constinfo !61
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 4), !taffo.info !60, !taffo.constinfo !62
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 4), !taffo.info !63, !taffo.constinfo !62
  %arraydecay12.u3_29fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !50
  %u3_29fixp3 = bitcast [12 x i32]* %arraydecay12.u3_29fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 8, i32 12, i32* %u3_29fixp3, i32 4), !taffo.info !64, !taffo.constinfo !65
  %arraydecay13.u3_29fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u3_29fixp, i32 0, i32 0, !taffo.info !53
  %u3_29fixp2 = bitcast [10 x i32]* %arraydecay13.u3_29fixp to i32*, !taffo.info !53
  call void @scale_2d.6_fixp(i32 12, i32 10, i32* %u3_29fixp2, i32 4), !taffo.info !66, !taffo.constinfo !65
  %arraydecay14.u3_29fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u3_29fixp, i32 0, i32 0, !taffo.info !55
  %u3_29fixp = bitcast [14 x i32]* %arraydecay14.u3_29fixp to i32*, !taffo.info !55
  call void @scale_2d.6_fixp(i32 10, i32 14, i32* %u3_29fixp, i32 4), !taffo.info !67, !taffo.constinfo !65
  %arraydecay15.u11_21fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u11_21fixp, i32 0, i32 0, !taffo.info !57, !taffo.target !59
  %u11_21fixp = bitcast [14 x i32]* %arraydecay15.u11_21fixp to i32*, !taffo.info !57, !taffo.target !59
  call void @scale_2d.9_fixp(i32 8, i32 14, i32* %u11_21fixp, i32 4), !taffo.info !68, !taffo.constinfo !65, !taffo.target !59
  %arraydecay16.u7_25fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u7_25fixp, i32 0, i32 0, !taffo.info !47
  %u7_25fixp = bitcast [10 x i32]* %arraydecay16.u7_25fixp to i32*, !taffo.info !47
  call void @scale_2d.5_fixp(i32 8, i32 10, i32* %u7_25fixp, i32 4), !taffo.info !69, !taffo.constinfo !65
  call void @timer_start(), !taffo.constinfo !70
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !71
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay17.u7_25fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u7_25fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay18.u3_29fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay19.u3_29fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u3_29fixp, i32 0, i32 0, !taffo.info !53
  %arraydecay20.u3_29fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u3_29fixp, i32 0, i32 0, !taffo.info !55
  %arraydecay21.u11_21fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u11_21fixp, i32 0, i32 0, !taffo.info !57, !taffo.target !59
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !71
  call void @kernel_2mm.3_fixp(i32 8, i32 10, i32 12, i32 14, i32 %0, i32 %u2_30fixp1, [10 x i32]* %arraydecay17.u7_25fixp, [12 x i32]* %arraydecay18.u3_29fixp, [10 x i32]* %arraydecay19.u3_29fixp, [14 x i32]* %arraydecay20.u3_29fixp, [14 x i32]* %arraydecay21.u11_21fixp), !taffo.info !60, !taffo.constinfo !61
  call void @timer_stop(), !taffo.constinfo !70
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc29, %for.inc28 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !76
  %cmp23 = icmp slt i32 %j.0, 14, !taffo.info !74
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond22
  %arrayidx.u11_21fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u11_21fixp, i32 0, i32 %i.0, !taffo.info !57, !taffo.target !59
  %arrayidx25.u11_21fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx.u11_21fixp, i32 0, i32 %j.0, !taffo.info !57, !taffo.target !59
  %u11_21fixp4 = load i32, i32* %arrayidx25.u11_21fixp, align 4, !taffo.info !57, !taffo.target !59
  %1 = uitofp i32 %u11_21fixp4 to float, !taffo.info !57, !taffo.target !59
  %lampsim = bitcast float %1 to i32
  %lampsim1 = and i32 %lampsim, -256
  %lampsim2 = bitcast i32 %lampsim1 to float
  %2 = fdiv float %lampsim2, 0x4140000000000000, !taffo.info !57, !taffo.target !59
  %lampsim3 = bitcast float %2 to i32
  %lampsim4 = and i32 %lampsim3, -256
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx26 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx26, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx27, align 4, !taffo.info !68, !taffo.target !59
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond22, !llvm.loop !80

for.end:                                          ; preds = %for.cond22
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %inc29 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !83

for.end30:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 8, i32 noundef 14, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0)), !taffo.constinfo !84
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !27 !taffo.funinfo !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !74
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !90
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !92
  %add = add nsw i32 %mul, %j.0, !taffo.info !92
  %rem = srem i32 %add, 20, !taffo.info !92, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !90
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
  %lampsim2 = and i64 %lampsim, -137438953472
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !84
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !94

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !95

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !96 !taffo.funinfo !97 !taffo.sourceFunction !100 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.3_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %alpha.u3_29fixp, i32 noundef %beta.u2_30fixp, [10 x i32]* noundef %tmp.u7_25fixp, [12 x i32]* noundef %A.u3_29fixp, [10 x i32]* noundef %B.u3_29fixp, [14 x i32]* noundef %C.u3_29fixp, [14 x i32]* noundef %D.u11_21fixp) #0 !taffo.initweight !101 !taffo.funinfo !102 !taffo.sourceFunction !105 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ], !taffo.info !74
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !90
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u7_25fixp, i32 %i.0, !taffo.info !47
  %arrayidx4.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u7_25fixp, i32 0, i32 %j.0, !taffo.info !47
  store i32 0, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !106, !taffo.constinfo !107
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !74
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !90
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u3_29fixp = getelementptr inbounds [12 x i32], [12 x i32]* %A.u3_29fixp, i32 %i.0, !taffo.info !50
  %arrayidx9.u3_29fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx8.u3_29fixp, i32 0, i32 %k.0, !taffo.info !50
  %u3_29fixp = load i32, i32* %arrayidx9.u3_29fixp, align 4, !taffo.info !50
  %0 = lshr i32 %alpha.u3_29fixp, 1, !taffo.info !71
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !50
  %2 = ashr i32 %0, 2, !taffo.info !71
  %3 = ashr i32 %1, 2, !taffo.info !50
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 26), !taffo.info !108
  %mul.u5_27fixp = shl i32 %4, 1, !taffo.info !111
  %arrayidx10.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u3_29fixp, i32 %k.0, !taffo.info !53
  %arrayidx11.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx10.u3_29fixp, i32 0, i32 %j.0, !taffo.info !53
  %u3_29fixp2 = load i32, i32* %arrayidx11.u3_29fixp, align 4, !taffo.info !113
  %5 = lshr i32 %mul.u5_27fixp, 1, !taffo.info !111
  %6 = lshr i32 %u3_29fixp2, 1, !taffo.info !113
  %7 = ashr i32 %5, 2, !taffo.info !111
  %8 = ashr i32 %6, 4, !taffo.info !113
  %9 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 24), !taffo.info !114
  %mul12.u7_25fixp = shl i32 %9, 1, !taffo.info !117
  %arrayidx13.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u7_25fixp, i32 %i.0, !taffo.info !47
  %arrayidx14.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx13.u7_25fixp, i32 0, i32 %j.0, !taffo.info !47
  %u7_25fixp = load i32, i32* %arrayidx14.u7_25fixp, align 4, !taffo.info !47
  %add.u7_25fixp = add i32 %u7_25fixp, %mul12.u7_25fixp, !taffo.info !118
  store i32 %add.u7_25fixp, i32* %arrayidx14.u7_25fixp, align 4, !taffo.info !69
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !120

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !121

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !122

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ], !taffo.info !74
  %cmp22 = icmp slt i32 %i.1, %ni, !taffo.info !90
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ], !taffo.info !74
  %cmp25 = icmp slt i32 %j.1, %nl, !taffo.info !90
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27.u11_21fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u11_21fixp, i32 %i.1, !taffo.info !57
  %arrayidx28.u11_21fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx27.u11_21fixp, i32 0, i32 %j.1, !taffo.info !57
  %u11_21fixp = load i32, i32* %arrayidx28.u11_21fixp, align 4, !taffo.info !57
  %10 = lshr i32 %u11_21fixp, 1, !taffo.info !57
  %11 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %12 = ashr i32 %11, 9, !taffo.info !45
  %13 = call i32 @llvm.smul.fix.i32(i32 %10, i32 %12, i32 20), !taffo.info !123
  %mul29.u11_21fixp = shl i32 %13, 1, !taffo.info !126
  store i32 %mul29.u11_21fixp, i32* %arrayidx28.u11_21fixp, align 4, !taffo.info !63
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ], !taffo.info !74
  %cmp31 = icmp slt i32 %k.1, %nj, !taffo.info !90
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u7_25fixp, i32 %i.1, !taffo.info !47
  %arrayidx34.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx33.u7_25fixp, i32 0, i32 %k.1, !taffo.info !47
  %u7_25fixp1 = load i32, i32* %arrayidx34.u7_25fixp, align 4, !taffo.info !127
  %arrayidx35.u3_29fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u3_29fixp, i32 %k.1, !taffo.info !55
  %arrayidx36.u3_29fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx35.u3_29fixp, i32 0, i32 %j.1, !taffo.info !55
  %u3_29fixp3 = load i32, i32* %arrayidx36.u3_29fixp, align 4, !taffo.info !55
  %14 = lshr i32 %u7_25fixp1, 1, !taffo.info !127
  %15 = lshr i32 %u3_29fixp3, 1, !taffo.info !55
  %16 = ashr i32 %14, 4, !taffo.info !127
  %17 = ashr i32 %15, 8, !taffo.info !55
  %18 = call i32 @llvm.smul.fix.i32(i32 %16, i32 %17, i32 20), !taffo.info !129
  %mul37.u11_21fixp = shl i32 %18, 1, !taffo.info !131
  %arrayidx38.u11_21fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u11_21fixp, i32 %i.1, !taffo.info !57
  %arrayidx39.u11_21fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx38.u11_21fixp, i32 0, i32 %j.1, !taffo.info !57
  %u11_21fixp4 = load i32, i32* %arrayidx39.u11_21fixp, align 4, !taffo.info !57
  %add40.u11_21fixp = add i32 %u11_21fixp4, %mul37.u11_21fixp, !taffo.info !132
  store i32 %add40.u11_21fixp, i32* %arrayidx39.u11_21fixp, align 4, !taffo.info !68
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !134

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond24, !llvm.loop !135

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond21, !llvm.loop !136

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [12 x i32]* noundef %A.u3_29fixp, [10 x i32]* noundef %B.u3_29fixp, [14 x i32]* noundef %C.u3_29fixp, [14 x i32]* noundef %D.u11_21fixp, [10 x i32]* noundef %tmp.u7_25fixp) #0 !taffo.initweight !137 !taffo.funinfo !138 !taffo.sourceFunction !139 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !60, !taffo.constinfo !140
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !63, !taffo.constinfo !142
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !145, !taffo.initweight !147
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !148, !taffo.initweight !149
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !145, !taffo.initweight !150

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !151, !taffo.initweight !147
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !148, !taffo.initweight !149
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !151, !taffo.initweight !150

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !153, !taffo.initweight !149
  %add = add nsw i32 %mul, 1, !taffo.info !155, !taffo.initweight !150, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !157, !taffo.initweight !159
  %conv.u3_29fixp = shl i32 %rem, 29, !taffo.info !160
  %conv6.u4_28fixp = shl i32 %ni, 28, !taffo.info !161
  %0 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !160
  %1 = lshr i32 %conv6.u4_28fixp, 1, !taffo.info !161
  %2 = ashr i32 %0, 1, !taffo.info !160
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 27), !taffo.info !163
  %div.u3_29fixp = shl i32 %3, 2, !taffo.info !166
  %arrayidx.u3_29fixp = getelementptr inbounds [12 x i32], [12 x i32]* %A.u3_29fixp, i32 %i.0, !taffo.info !167
  %arrayidx7.u3_29fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u3_29fixp, i32 0, i32 %j.0, !taffo.info !167
  store i32 %div.u3_29fixp, i32* %arrayidx7.u3_29fixp, align 4, !taffo.info !106
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !168, !taffo.initweight !149, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !170

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !171, !taffo.initweight !149, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !173

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !145, !taffo.initweight !147
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.info !148, !taffo.initweight !149
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !145, !taffo.initweight !150

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !151, !taffo.initweight !147
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.info !148, !taffo.initweight !149
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !151, !taffo.initweight !150

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !168, !taffo.initweight !149, !taffo.constinfo !21
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.info !174, !taffo.initweight !149
  %rem21 = srem i32 %mul20, %nj, !taffo.info !176, !taffo.initweight !150
  %conv22.u4_28fixp = shl i32 %rem21, 28, !taffo.info !177
  %conv23.u4_28fixp = shl i32 %nj, 28, !taffo.info !178
  %4 = lshr i32 %conv22.u4_28fixp, 1, !taffo.info !177
  %5 = lshr i32 %conv23.u4_28fixp, 1, !taffo.info !178
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 27), !taffo.info !179
  %div24.u1_31fixp = shl i32 %6, 4, !taffo.info !181
  %arrayidx25.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u3_29fixp, i32 %i.1, !taffo.info !183
  %arrayidx26.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx25.u3_29fixp, i32 0, i32 %j.1, !taffo.info !183
  %7 = lshr i32 %div24.u1_31fixp, 2, !taffo.info !181
  store i32 %7, i32* %arrayidx26.u3_29fixp, align 4, !taffo.info !106
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !168, !taffo.initweight !149, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !184

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !171, !taffo.initweight !149, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !185

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.info !145, !taffo.initweight !147
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.info !148, !taffo.initweight !149
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.info !145, !taffo.initweight !150

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.info !151, !taffo.initweight !147
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.info !148, !taffo.initweight !149
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.info !151, !taffo.initweight !150

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.info !186, !taffo.initweight !149, !taffo.constinfo !21
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.info !188, !taffo.initweight !149
  %add43 = add nsw i32 %mul42, 1, !taffo.info !190, !taffo.initweight !150, !taffo.constinfo !21
  %rem44 = srem i32 %add43, %nl, !taffo.info !192, !taffo.initweight !159
  %conv45.u4_28fixp = shl i32 %rem44, 28, !taffo.info !194
  %conv46.u4_28fixp = shl i32 %nl, 28, !taffo.info !195
  %8 = lshr i32 %conv45.u4_28fixp, 1, !taffo.info !194
  %9 = lshr i32 %conv46.u4_28fixp, 1, !taffo.info !195
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 27), !taffo.info !196
  %div47.u1_31fixp = shl i32 %10, 4, !taffo.info !198
  %arrayidx48.u3_29fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u3_29fixp, i32 %i.2, !taffo.info !199
  %arrayidx49.u3_29fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx48.u3_29fixp, i32 0, i32 %j.2, !taffo.info !199
  %11 = lshr i32 %div47.u1_31fixp, 2, !taffo.info !198
  store i32 %11, i32* %arrayidx49.u3_29fixp, align 4, !taffo.info !106
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.info !168, !taffo.initweight !149, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !200

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.info !171, !taffo.initweight !149, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !201

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.info !145, !taffo.initweight !147
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.info !148, !taffo.initweight !149
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.info !145, !taffo.initweight !150

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.info !151, !taffo.initweight !147
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.info !148, !taffo.initweight !149
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.info !151, !taffo.initweight !150

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.info !202, !taffo.initweight !149, !taffo.constinfo !21
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.info !204, !taffo.initweight !149
  %rem66 = srem i32 %mul65, %nk, !taffo.info !206, !taffo.initweight !150
  %conv67.u4_28fixp = shl i32 %rem66, 28, !taffo.info !208
  %conv68.u4_28fixp = shl i32 %nk, 28, !taffo.info !209
  %12 = lshr i32 %conv67.u4_28fixp, 1, !taffo.info !208
  %13 = lshr i32 %conv68.u4_28fixp, 1, !taffo.info !209
  %14 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %13, i32 27), !taffo.info !210
  %div69.u1_31fixp = shl i32 %14, 4, !taffo.info !212
  %arrayidx70.u11_21fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u11_21fixp, i32 %i.3, !taffo.info !213
  %arrayidx71.u11_21fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx70.u11_21fixp, i32 0, i32 %j.3, !taffo.info !213
  %15 = lshr i32 %div69.u1_31fixp, 10, !taffo.info !212
  store i32 %15, i32* %arrayidx71.u11_21fixp, align 4, !taffo.info !106
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.info !168, !taffo.initweight !149, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !214

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.info !171, !taffo.initweight !149, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !215

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.info !145, !taffo.initweight !147
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.info !148, !taffo.initweight !149
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.info !145, !taffo.initweight !150

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.info !151, !taffo.initweight !147
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.info !148, !taffo.initweight !149
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.info !151, !taffo.initweight !150

for.body85:                                       ; preds = %for.cond82
  %arrayidx86.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u7_25fixp, i32 %i.4, !taffo.info !216
  %arrayidx87.u7_25fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx86.u7_25fixp, i32 0, i32 %j.4, !taffo.info !216
  store i32 0, i32* %arrayidx87.u7_25fixp, align 4, !taffo.info !106, !taffo.constinfo !107
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.info !168, !taffo.initweight !149, !taffo.constinfo !21
  br label %for.cond82, !llvm.loop !217

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.info !171, !taffo.initweight !149, !taffo.constinfo !21
  br label %for.cond78, !llvm.loop !218

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !219 !taffo.funinfo !220 !taffo.sourceFunction !221 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !74
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !90
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !92
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %0, !taffo.info !50
  %arrayidx4.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx.u3_29fixp, i32 %j.0, !taffo.info !50
  %u3_29fixp = load i32, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !222
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !223
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !222
  %2 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !223
  %3 = ashr i32 %1, 1, !taffo.info !222
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 27), !taffo.info !224
  %mul.u4_28fixp = shl i32 %4, 1, !taffo.info !225
  %5 = mul nsw i32 %i.0, %m, !taffo.info !92
  %arrayidx5.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %5, !taffo.info !50
  %arrayidx6.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx5.u3_29fixp, i32 %j.0, !taffo.info !50
  %6 = shl i32 %mul.u4_28fixp, 1, !taffo.info !225
  store i32 %6, i32* %arrayidx6.u3_29fixp, align 4, !taffo.info !64
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !226

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !227

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u7_25fixp, i32 noundef %factor) #0 !taffo.initweight !219 !taffo.funinfo !228 !taffo.sourceFunction !221 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !74
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !90
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !92
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %0, !taffo.info !47
  %arrayidx4.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx.u7_25fixp, i32 %j.0, !taffo.info !47
  %u7_25fixp = load i32, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !127
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !229
  %1 = lshr i32 %u7_25fixp, 1, !taffo.info !127
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !229
  %3 = ashr i32 %1, 2, !taffo.info !127
  %4 = ashr i32 %2, 6, !taffo.info !229
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 22), !taffo.info !230
  %mul.u9_23fixp = shl i32 %5, 1, !taffo.info !233
  %6 = mul nsw i32 %i.0, %m, !taffo.info !92
  %arrayidx5.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %6, !taffo.info !47
  %arrayidx6.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx5.u7_25fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %mul.u9_23fixp, 2, !taffo.info !233
  store i32 %7, i32* %arrayidx6.u7_25fixp, align 4, !taffo.info !69
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !234

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !235

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u11_21fixp, i32 noundef %factor) #0 !taffo.initweight !219 !taffo.funinfo !236 !taffo.sourceFunction !221 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !74
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !90
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !92
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %0, !taffo.info !57
  %arrayidx4.u11_21fixp = getelementptr inbounds i32, i32* %arrayidx.u11_21fixp, i32 %j.0, !taffo.info !57
  %u11_21fixp = load i32, i32* %arrayidx4.u11_21fixp, align 4, !taffo.info !237
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !229
  %1 = lshr i32 %u11_21fixp, 1, !taffo.info !237
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !229
  %3 = ashr i32 %1, 2, !taffo.info !237
  %4 = ashr i32 %2, 10, !taffo.info !229
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 18), !taffo.info !239
  %mul.u13_19fixp = shl i32 %5, 1, !taffo.info !242
  %6 = mul nsw i32 %i.0, %m, !taffo.info !92
  %arrayidx5.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %6, !taffo.info !57
  %arrayidx6.u11_21fixp = getelementptr inbounds i32, i32* %arrayidx5.u11_21fixp, i32 %j.0, !taffo.info !57
  %7 = shl i32 %mul.u13_19fixp, 2, !taffo.info !242
  store i32 %7, i32* %arrayidx6.u11_21fixp, align 4, !taffo.info !68
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !243

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !244

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
!1 = !{double 0.000000e+00, double 0x40932E66601BC98A}
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
!48 = !{!"fixp", i32 32, i32 25}
!49 = !{double 0.000000e+00, double 0x405273331E3A7DAA}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 29}
!52 = !{double 0.000000e+00, double 3.500000e+00}
!53 = !{!51, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 3.600000e+00}
!55 = !{!51, !56, i1 false, i2 -1}
!56 = !{double 0.000000e+00, double 0x400DB6DB940FECDD}
!57 = !{!58, !1, i1 false, i2 -1}
!58 = !{!"fixp", i32 32, i32 21}
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
!71 = !{!51, !44, i1 false, i2 -1}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 0.000000e+00, double 9.000000e+00}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0.000000e+00, double 1.000000e+00}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0.000000e+00, double 1.350000e+02}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 1.350000e+02}
!80 = distinct !{!80, !23}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 9.000000e+00}
!83 = distinct !{!83, !23}
!84 = !{i1 false, i1 false, i1 false, i1 false}
!85 = !{i32 1, !86, i32 1, !88, i32 1, !0}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 8.000000e+00, double 8.000000e+00}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.400000e+01, double 1.400000e+01}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 1.000000e+00, double 1.000000e+00}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 0.000000e+00, double 0.000000e+00}
!94 = distinct !{!94, !23}
!95 = distinct !{!95, !23}
!96 = !{i32 1, i32 -1}
!97 = !{i32 1, !42, i32 1, !98}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 4.000000e+00, double 4.000000e+00}
!100 = !{void (float*, i32)* @scale_scalar}
!101 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!102 = !{i32 1, !86, i32 1, !16, i32 1, !103, i32 1, !88, i32 1, !71, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53, i32 1, !55, i32 1, !57}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 1.200000e+01, double 1.200000e+01}
!105 = distinct !{null}
!106 = !{i1 false, i1 false, i1 false, i2 1}
!107 = !{!92, i1 false}
!108 = !{!109, !110, i1 false, i2 -1}
!109 = !{!"fixp", i32 -32, i32 26}
!110 = !{double 0.000000e+00, double 5.250000e+00}
!111 = !{!112, !110, i1 false, i2 -1}
!112 = !{!"fixp", i32 32, i32 27}
!113 = !{!112, !54, i1 false, i2 -1}
!114 = !{!115, !116, i1 false, i2 -1}
!115 = !{!"fixp", i32 -32, i32 24}
!116 = !{double 0.000000e+00, double 0x4032E66666666667}
!117 = !{!48, !116, i1 false, i2 -1}
!118 = !{!48, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 0x40572CCCB7D41744}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !23}
!123 = !{!124, !125, i1 false, i2 -1}
!124 = !{!"fixp", i32 -32, i32 20}
!125 = !{double 0.000000e+00, double 0x4097047AD9BAF1D9}
!126 = !{!58, !125, i1 false, i2 -1}
!127 = !{!128, !49, i1 false, i2 -1}
!128 = !{!"fixp", i32 32, i32 23}
!129 = !{!124, !130, i1 false, i2 -1}
!130 = !{double 0.000000e+00, double 0x407121D41FE4C06A}
!131 = !{!58, !130, i1 false, i2 -1}
!132 = !{!58, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 0x409776DB6814F9A4}
!134 = distinct !{!134, !23}
!135 = distinct !{!135, !23}
!136 = distinct !{!136, !23}
!137 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!138 = !{i32 1, !86, i32 1, !16, i32 1, !103, i32 1, !88, i32 1, !42, i32 1, !45, i32 1, !50, i32 1, !53, i32 1, !55, i32 1, !57, i32 1, !47}
!139 = distinct !{null}
!140 = !{!141, i1 false}
!141 = !{i1 false, !44, i1 false, i2 0}
!142 = !{!143, i1 false}
!143 = !{i1 false, !144, i1 false, i2 0}
!144 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!145 = !{i1 false, !146, i1 false, i2 -1}
!146 = !{double 0.000000e+00, double 1.200000e+01}
!147 = !{i32 0}
!148 = !{i1 false, !75, i1 false, i2 -1}
!149 = !{i32 2}
!150 = !{i32 3}
!151 = !{i1 false, !152, i1 false, i2 -1}
!152 = !{double 0.000000e+00, double 1.400000e+01}
!153 = !{i1 false, !154, i1 false, i2 -1}
!154 = !{double 0.000000e+00, double 1.680000e+02}
!155 = !{i1 false, !156, i1 false, i2 -1}
!156 = !{double 1.000000e+00, double 1.690000e+02}
!157 = !{i1 false, !158, i1 false, i2 -1}
!158 = !{double 0.000000e+00, double 7.000000e+00}
!159 = !{i32 4}
!160 = !{!51, !158, i1 false, i2 -1}
!161 = !{!162, !87, i1 false, i2 1}
!162 = !{!"fixp", i32 32, i32 28}
!163 = !{!164, !165, i1 false, i2 -1}
!164 = !{!"fixp", i32 -32, i32 27}
!165 = !{double 0.000000e+00, double 8.750000e-01}
!166 = !{!51, !165, i1 false, i2 -1}
!167 = !{!51, !52, i1 false, i2 1}
!168 = !{i1 false, !169, i1 false, i2 -1}
!169 = !{double 1.000000e+00, double 1.500000e+01}
!170 = distinct !{!170, !23}
!171 = !{i1 false, !172, i1 false, i2 -1}
!172 = !{double 1.000000e+00, double 1.300000e+01}
!173 = distinct !{!173, !23}
!174 = !{i1 false, !175, i1 false, i2 -1}
!175 = !{double 0.000000e+00, double 1.800000e+02}
!176 = !{i1 false, !73, i1 false, i2 -1}
!177 = !{!162, !73, i1 false, i2 -1}
!178 = !{!162, !17, i1 false, i2 1}
!179 = !{!164, !180, i1 false, i2 -1}
!180 = !{double 0.000000e+00, double 9.000000e-01}
!181 = !{!182, !180, i1 false, i2 -1}
!182 = !{!"fixp", i32 32, i32 31}
!183 = !{!51, !54, i1 false, i2 1}
!184 = distinct !{!184, !23}
!185 = distinct !{!185, !23}
!186 = !{i1 false, !187, i1 false, i2 -1}
!187 = !{double 3.000000e+00, double 1.700000e+01}
!188 = !{i1 false, !189, i1 false, i2 -1}
!189 = !{double 0.000000e+00, double 2.040000e+02}
!190 = !{i1 false, !191, i1 false, i2 -1}
!191 = !{double 1.000000e+00, double 2.050000e+02}
!192 = !{i1 false, !193, i1 false, i2 -1}
!193 = !{double 0.000000e+00, double 1.300000e+01}
!194 = !{!162, !193, i1 false, i2 -1}
!195 = !{!162, !89, i1 false, i2 1}
!196 = !{!164, !197, i1 false, i2 -1}
!197 = !{double 0.000000e+00, double 0x3FEDB6DB6DB6DB6E}
!198 = !{!182, !197, i1 false, i2 -1}
!199 = !{!51, !56, i1 false, i2 1}
!200 = distinct !{!200, !23}
!201 = distinct !{!201, !23}
!202 = !{i1 false, !203, i1 false, i2 -1}
!203 = !{double 2.000000e+00, double 1.600000e+01}
!204 = !{i1 false, !205, i1 false, i2 -1}
!205 = !{double 0.000000e+00, double 1.920000e+02}
!206 = !{i1 false, !207, i1 false, i2 -1}
!207 = !{double 0.000000e+00, double 1.100000e+01}
!208 = !{!162, !207, i1 false, i2 -1}
!209 = !{!162, !104, i1 false, i2 1}
!210 = !{!164, !211, i1 false, i2 -1}
!211 = !{double 0.000000e+00, double 0x3FED555555555555}
!212 = !{!182, !211, i1 false, i2 -1}
!213 = !{!58, !1, i1 false, i2 1}
!214 = distinct !{!214, !23}
!215 = distinct !{!215, !23}
!216 = !{!48, !49, i1 false, i2 1}
!217 = distinct !{!217, !23}
!218 = distinct !{!218, !23}
!219 = !{i32 -1, i32 -1, i32 3, i32 -1}
!220 = !{i32 1, !86, i32 1, !103, i32 1, !50, i32 1, !98}
!221 = !{void (i32, i32, float*, i32)* @scale_2d}
!222 = !{!162, !52, i1 false, i2 -1}
!223 = !{!162, !99, i1 false, i2 1}
!224 = !{!164, !152, i1 false, i2 -1}
!225 = !{!162, !152, i1 false, i2 -1}
!226 = distinct !{!226, !23}
!227 = distinct !{!227, !23}
!228 = !{i32 1, !86, i32 1, !16, i32 1, !47, i32 1, !98}
!229 = !{!51, !99, i1 false, i2 1}
!230 = !{!231, !232, i1 false, i2 -1}
!231 = !{!"fixp", i32 -32, i32 22}
!232 = !{double 0.000000e+00, double 0x407273331E3A7DAA}
!233 = !{!128, !232, i1 false, i2 -1}
!234 = distinct !{!234, !23}
!235 = distinct !{!235, !23}
!236 = !{i32 1, !86, i32 1, !88, i32 1, !57, i32 1, !98}
!237 = !{!238, !1, i1 false, i2 -1}
!238 = !{!"fixp", i32 32, i32 19}
!239 = !{!240, !241, i1 false, i2 -1}
!240 = !{!"fixp", i32 -32, i32 18}
!241 = !{double 0.000000e+00, double 0x40B32E66601BC98A}
!242 = !{!238, !241, i1 false, i2 -1}
!243 = distinct !{!243, !23}
!244 = distinct !{!244, !23}
