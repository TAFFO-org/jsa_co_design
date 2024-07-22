; ModuleID = './build/bin/fixed/gesummv/24/gesummv-standard-2-fixed-24.out.ll'
source_filename = "./sources/gesummv.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@y_float = dso_local global [16 x float] zeroinitializer, align 4, !taffo.info !0
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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.equivalentChild !29 {
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
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.equivalentChild !33 {
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
  br label %for.cond1, !llvm.loop !34

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !35

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !36 !taffo.funinfo !37 {
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
  br label %for.cond4, !llvm.loop !38

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !39

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !40

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !41 !taffo.funinfo !41 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !41 !taffo.funinfo !41 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !42 {
entry:
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !43
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !46
  %A.u2_30fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !48
  %B.u2_30fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !48
  %tmp.u5_27fixp = alloca [16 x i32], align 4, !taffo.info !50
  %x.u2_30fixp = alloca [16 x i32], align 4, !taffo.info !48
  %y.u6_26fixp = alloca [16 x i32], align 4, !taffo.info !53, !taffo.target !55
  %arraydecay.u2_30fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay8.u2_30fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay9.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay10.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u5_27fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay11.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u6_26fixp, i32 0, i32 0, !taffo.info !53, !taffo.target !55
  call void @init_array.7_fixp(i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u2_30fixp, [16 x i32]* %arraydecay8.u2_30fixp, i32* %arraydecay9.u2_30fixp, i32* %arraydecay10.u5_27fixp, i32* %arraydecay11.u6_26fixp), !taffo.info !56, !taffo.constinfo !57
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 2), !taffo.info !56, !taffo.constinfo !58
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 2), !taffo.info !59, !taffo.constinfo !58
  %arraydecay12.u2_30fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %u2_30fixp2 = bitcast [16 x i32]* %arraydecay12.u2_30fixp to i32*, !taffo.info !48
  call void @scale_2d.8_fixp(i32 16, i32 16, i32* %u2_30fixp2, i32 2), !taffo.info !60, !taffo.constinfo !61
  %arraydecay13.u2_30fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %u2_30fixp3 = bitcast [16 x i32]* %arraydecay13.u2_30fixp to i32*, !taffo.info !48
  call void @scale_2d.8_fixp(i32 16, i32 16, i32* %u2_30fixp3, i32 2), !taffo.info !60, !taffo.constinfo !61
  %arraydecay14.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u5_27fixp, i32 0, i32 0, !taffo.info !50
  call void @scale_1d.3_fixp(i32 16, i32* %arraydecay14.u5_27fixp, i32 2), !taffo.info !62, !taffo.constinfo !63
  %arraydecay15.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u2_30fixp, i32 0, i32 0, !taffo.info !48
  call void @scale_1d.4_fixp(i32 16, i32* %arraydecay15.u2_30fixp, i32 2), !taffo.info !60, !taffo.constinfo !63
  %arraydecay16.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u6_26fixp, i32 0, i32 0, !taffo.info !53, !taffo.target !55
  call void @scale_1d.6_fixp(i32 16, i32* %arraydecay16.u6_26fixp, i32 2), !taffo.info !64, !taffo.constinfo !63, !taffo.target !55
  call void @timer_start(), !taffo.constinfo !65
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !43
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !46
  %arraydecay17.u2_30fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay18.u2_30fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay19.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u5_27fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay20.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay21.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u6_26fixp, i32 0, i32 0, !taffo.info !53, !taffo.target !55
  call void @kernel_gesummv.5_fixp(i32 16, i32 %u2_30fixp, i32 %u2_30fixp1, [16 x i32]* %arraydecay17.u2_30fixp, [16 x i32]* %arraydecay18.u2_30fixp, i32* %arraydecay19.u5_27fixp, i32* %arraydecay20.u2_30fixp, i32* %arraydecay21.u6_26fixp), !taffo.info !56, !taffo.constinfo !57
  call void @timer_stop(), !taffo.constinfo !65
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !68
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u6_26fixp, i32 0, i32 %i.0, !taffo.info !53, !taffo.target !55
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !53, !taffo.target !55
  %0 = uitofp i32 %u6_26fixp to float, !taffo.info !53, !taffo.target !55
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4190000000000000, !taffo.info !53, !taffo.target !55
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx22, align 4, !taffo.info !64, !taffo.target !55
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !70, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 16, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !58
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !24 !taffo.funinfo !73 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !78, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !76
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !58
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -536870912
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !63
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !81 !taffo.funinfo !82 !taffo.sourceFunction !83 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !84 !taffo.funinfo !85 !taffo.sourceFunction !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !50
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !87
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !88
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !87
  %1 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !88
  %2 = ashr i32 %0, 1, !taffo.info !87
  %3 = ashr i32 %1, 4, !taffo.info !88
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 25), !taffo.info !89
  %mul.u6_26fixp = shl i32 %4, 1, !taffo.info !92
  %arrayidx1.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !50
  %5 = shl i32 %mul.u6_26fixp, 1, !taffo.info !92
  store i32 %5, i32* %arrayidx1.u5_27fixp, align 4, !taffo.info !62
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !93

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6_fixp(i32 noundef %n, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !84 !taffo.funinfo !94 !taffo.sourceFunction !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !53
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !95
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !88
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !95
  %1 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !88
  %2 = ashr i32 %0, 1, !taffo.info !95
  %3 = ashr i32 %1, 5, !taffo.info !88
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 24), !taffo.info !97
  %mul.u7_25fixp = shl i32 %4, 1, !taffo.info !100
  %arrayidx1.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !53
  %5 = shl i32 %mul.u7_25fixp, 1, !taffo.info !100
  store i32 %5, i32* %arrayidx1.u6_26fixp, align 4, !taffo.info !64
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !101

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.5_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u2_30fixp, [16 x i32]* noundef %B.u2_30fixp, i32* noundef %tmp.u5_27fixp, i32* noundef %x.u2_30fixp, i32* noundef %y.u6_26fixp) #0 !taffo.initweight !102 !taffo.funinfo !103 !taffo.sourceFunction !104 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.0, !taffo.info !50
  store i32 0, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  %arrayidx1.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !53
  store i32 0, i32* %arrayidx1.u6_26fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !76
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !48
  %arrayidx6.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx5.u2_30fixp, i32 0, i32 %j.0, !taffo.info !48
  %u2_30fixp4 = load i32, i32* %arrayidx6.u2_30fixp, align 4, !taffo.info !107
  %arrayidx7.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %j.0, !taffo.info !48
  %u2_30fixp = load i32, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !107
  %0 = lshr i32 %u2_30fixp4, 1, !taffo.info !107
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !107
  %2 = ashr i32 %0, 3, !taffo.info !107
  %3 = ashr i32 %1, 3, !taffo.info !107
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 26), !taffo.info !109
  %mul.u5_27fixp = shl i32 %4, 1, !taffo.info !112
  %arrayidx8.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.0, !taffo.info !50
  %u5_27fixp = load i32, i32* %arrayidx8.u5_27fixp, align 4, !taffo.info !50
  %add.u5_27fixp = add i32 %mul.u5_27fixp, %u5_27fixp, !taffo.info !113
  %arrayidx9.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.0, !taffo.info !50
  store i32 %add.u5_27fixp, i32* %arrayidx9.u5_27fixp, align 4, !taffo.info !62
  %arrayidx10.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u2_30fixp, i32 %i.0, !taffo.info !48
  %arrayidx11.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u2_30fixp, i32 0, i32 %j.0, !taffo.info !48
  %u2_30fixp5 = load i32, i32* %arrayidx11.u2_30fixp, align 4, !taffo.info !107
  %arrayidx12.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %j.0, !taffo.info !48
  %u2_30fixp2 = load i32, i32* %arrayidx12.u2_30fixp, align 4, !taffo.info !107
  %5 = lshr i32 %u2_30fixp5, 1, !taffo.info !107
  %6 = lshr i32 %u2_30fixp2, 1, !taffo.info !107
  %7 = ashr i32 %5, 1, !taffo.info !107
  %8 = ashr i32 %6, 1, !taffo.info !107
  %9 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 28), !taffo.info !115
  %mul13.u3_29fixp = shl i32 %9, 1, !taffo.info !117
  %arrayidx14.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !53
  %u6_26fixp = load i32, i32* %arrayidx14.u6_26fixp, align 4, !taffo.info !53
  %10 = lshr i32 %mul13.u3_29fixp, 3, !taffo.info !117
  %add15.u6_26fixp = add i32 %10, %u6_26fixp, !taffo.info !118
  %arrayidx16.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !53
  store i32 %add15.u6_26fixp, i32* %arrayidx16.u6_26fixp, align 4, !taffo.info !64
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !120

for.end:                                          ; preds = %for.cond2
  %arrayidx17.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.0, !taffo.info !50
  %u5_27fixp1 = load i32, i32* %arrayidx17.u5_27fixp, align 4, !taffo.info !50
  %11 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !43
  %12 = lshr i32 %u5_27fixp1, 1, !taffo.info !50
  %13 = ashr i32 %11, 5, !taffo.info !43
  %14 = ashr i32 %12, 2, !taffo.info !50
  %15 = call i32 @llvm.smul.fix.i32(i32 %13, i32 %14, i32 24), !taffo.info !121
  %mul18.u7_25fixp = shl i32 %15, 1, !taffo.info !123
  %arrayidx19.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !53
  %u6_26fixp3 = load i32, i32* %arrayidx19.u6_26fixp, align 4, !taffo.info !53
  %16 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !46
  %17 = lshr i32 %u6_26fixp3, 1, !taffo.info !53
  %18 = ashr i32 %16, 5, !taffo.info !46
  %19 = ashr i32 %17, 1, !taffo.info !53
  %20 = call i32 @llvm.smul.fix.i32(i32 %18, i32 %19, i32 24), !taffo.info !124
  %mul20.u7_25fixp = shl i32 %20, 1, !taffo.info !126
  %add21.u7_25fixp = add i32 %mul18.u7_25fixp, %mul20.u7_25fixp, !taffo.info !127
  %arrayidx22.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !53
  %21 = shl i32 %add21.u7_25fixp, 1, !taffo.info !127
  store i32 %21, i32* %arrayidx22.u6_26fixp, align 4, !taffo.info !64
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !129

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !84 !taffo.funinfo !130 !taffo.sourceFunction !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !48
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !107
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !131
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !107
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !131
  %2 = ashr i32 %0, 1, !taffo.info !107
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 28), !taffo.info !132
  %mul.u3_29fixp = shl i32 %3, 1, !taffo.info !134
  %arrayidx1.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !48
  %4 = shl i32 %mul.u3_29fixp, 1, !taffo.info !134
  store i32 %4, i32* %arrayidx1.u2_30fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !135

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.7_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u2_30fixp, [16 x i32]* noundef %B.u2_30fixp, i32* noundef %x.u2_30fixp, i32* noundef %tmp.u5_27fixp, i32* noundef %y.u6_26fixp) #0 !taffo.initweight !136 !taffo.funinfo !137 !taffo.sourceFunction !138 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !56, !taffo.constinfo !139
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !59, !taffo.constinfo !141
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !144, !taffo.initweight !145
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !146, !taffo.initweight !147
  br i1 %cmp, label %for.body, label %for.end26, !taffo.info !148, !taffo.initweight !150

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !151, !taffo.initweight !147
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !153
  %conv3.u5_27fixp = shl i32 %n, 27, !taffo.info !155
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !153
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !155
  %2 = ashr i32 %0, 1, !taffo.info !153
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !156
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !158
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %i.0, !taffo.info !160
  %4 = lshr i32 %div.u1_31fixp, 1, !taffo.info !158
  store i32 %4, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !105
  %arrayidx4.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !161
  store i32 0, i32* %arrayidx4.u6_26fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.0, !taffo.info !162
  store i32 0, i32* %arrayidx5.u5_27fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !144, !taffo.initweight !145
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.info !146, !taffo.initweight !147
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.info !148, !taffo.initweight !150

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !163, !taffo.initweight !147
  %add = add nsw i32 %mul, 1, !taffo.info !165, !taffo.initweight !150, !taffo.constinfo !21
  %rem10 = srem i32 %add, %n, !taffo.info !151, !taffo.initweight !167
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !153
  %conv12.u5_27fixp = shl i32 %n, 27, !taffo.info !155
  %5 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !153
  %6 = lshr i32 %conv12.u5_27fixp, 1, !taffo.info !155
  %7 = ashr i32 %5, 1, !taffo.info !153
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 26), !taffo.info !156
  %div13.u1_31fixp = shl i32 %8, 5, !taffo.info !158
  %arrayidx14.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !160
  %arrayidx15.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx14.u2_30fixp, i32 0, i32 %j.0, !taffo.info !160
  %9 = lshr i32 %div13.u1_31fixp, 1, !taffo.info !158
  store i32 %9, i32* %arrayidx15.u2_30fixp, align 4, !taffo.info !105
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.info !163, !taffo.initweight !147
  %add17 = add nsw i32 %mul16, 2, !taffo.info !168, !taffo.initweight !150, !taffo.constinfo !21
  %rem18 = srem i32 %add17, %n, !taffo.info !151, !taffo.initweight !167
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !153
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !155
  %10 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !153
  %11 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !155
  %12 = ashr i32 %10, 1, !taffo.info !153
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %11, i32 26), !taffo.info !156
  %div21.u1_31fixp = shl i32 %13, 5, !taffo.info !158
  %arrayidx22.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u2_30fixp, i32 %i.0, !taffo.info !160
  %arrayidx23.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u2_30fixp, i32 0, i32 %j.0, !taffo.info !160
  %14 = lshr i32 %div21.u1_31fixp, 1, !taffo.info !158
  store i32 %14, i32* %arrayidx23.u2_30fixp, align 4, !taffo.info !105
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !170, !taffo.initweight !147, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !171

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !170, !taffo.initweight !147, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !172

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !173 !taffo.funinfo !174 !taffo.sourceFunction !175 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !76
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !78
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %0, !taffo.info !48
  %arrayidx4.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx.u2_30fixp, i32 %j.0, !taffo.info !48
  %u2_30fixp = load i32, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !107
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !131
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !107
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !131
  %3 = ashr i32 %1, 1, !taffo.info !107
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 28), !taffo.info !132
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !134
  %5 = mul nsw i32 %i.0, %m, !taffo.info !78
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %5, !taffo.info !48
  %arrayidx6.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx5.u2_30fixp, i32 %j.0, !taffo.info !48
  %6 = shl i32 %mul.u3_29fixp, 1, !taffo.info !134
  store i32 %6, i32* %arrayidx6.u2_30fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !176

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !177

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
!1 = !{double 0.000000e+00, double 0x4046A6667F90D9D7}
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
!29 = distinct !{null, null, null}
!30 = distinct !{!30, !23}
!31 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!33 = distinct !{null, null}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = !{}
!42 = !{i1 true}
!43 = !{!44, !45, i1 false, i2 -1}
!44 = !{!"fixp", i32 32, i32 30}
!45 = !{double 1.500000e+00, double 1.500000e+00}
!46 = !{!44, !47, i1 false, i2 -1}
!47 = !{double 1.200000e+00, double 1.200000e+00}
!48 = !{!44, !49, i1 false, i2 -1}
!49 = !{double 0.000000e+00, double 1.875000e+00}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 27}
!52 = !{double 0.000000e+00, double 1.762500e+01}
!53 = !{!54, !1, i1 false, i2 -1}
!54 = !{!"fixp", i32 32, i32 26}
!55 = !{!"y"}
!56 = !{i1 false, !45, i1 false, i2 -1}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{i1 false, i1 false, i1 false}
!59 = !{i1 false, !47, i1 false, i2 -1}
!60 = !{i1 false, !49, i1 false, i2 -1}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = !{i1 false, !52, i1 false, i2 -1}
!63 = !{i1 false, i1 false, i1 false, i1 false}
!64 = !{i1 false, !1, i1 false, i2 -1}
!65 = !{i1 false}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 1.700000e+01}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 1.000000e+00}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.000000e+00, double 1.700000e+01}
!72 = distinct !{!72, !23}
!73 = !{i32 1, !74, i32 1, !0}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.600000e+01, double 1.600000e+01}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 1.000000e+00}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 0.000000e+00}
!80 = distinct !{!80, !23}
!81 = !{i32 1, i32 -1}
!82 = !{i32 1, !43, i32 1, !19}
!83 = !{void (float*, i32)* @scale_scalar}
!84 = !{i32 -1, i32 2, i32 -1}
!85 = !{i32 1, !74, i32 1, !50, i32 1, !19}
!86 = !{void (i32, float*, i32)* @scale_1d}
!87 = !{!54, !52, i1 false, i2 -1}
!88 = !{!44, !20, i1 false, i2 1}
!89 = !{!90, !91, i1 false, i2 -1}
!90 = !{!"fixp", i32 -32, i32 25}
!91 = !{double 0.000000e+00, double 3.525000e+01}
!92 = !{!54, !91, i1 false, i2 -1}
!93 = distinct !{!93, !23}
!94 = !{i32 1, !74, i32 1, !53, i32 1, !19}
!95 = !{!96, !1, i1 false, i2 -1}
!96 = !{!"fixp", i32 32, i32 25}
!97 = !{!98, !99, i1 false, i2 -1}
!98 = !{!"fixp", i32 -32, i32 24}
!99 = !{double 0.000000e+00, double 0x4056A6667F90D9D7}
!100 = !{!96, !99, i1 false, i2 -1}
!101 = distinct !{!101, !23}
!102 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!103 = !{i32 1, !74, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !50, i32 1, !48, i32 1, !53}
!104 = distinct !{null}
!105 = !{i1 false, i1 false, i1 false, i2 1}
!106 = !{!78, i1 false}
!107 = !{!108, !49, i1 false, i2 -1}
!108 = !{!"fixp", i32 32, i32 29}
!109 = !{!110, !111, i1 false, i2 -1}
!110 = !{!"fixp", i32 -32, i32 26}
!111 = !{double 0.000000e+00, double 0x400C200000000000}
!112 = !{!51, !111, i1 false, i2 -1}
!113 = !{!51, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 0x4035240000000000}
!115 = !{!116, !111, i1 false, i2 -1}
!116 = !{!"fixp", i32 -32, i32 28}
!117 = !{!108, !111, i1 false, i2 -1}
!118 = !{!54, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 0x404868667F90D9D7}
!120 = distinct !{!120, !23}
!121 = !{!98, !122, i1 false, i2 -1}
!122 = !{double 0.000000e+00, double 2.643750e+01}
!123 = !{!96, !122, i1 false, i2 -1}
!124 = !{!98, !125, i1 false, i2 -1}
!125 = !{double 0.000000e+00, double 0x404B2E149914389B}
!126 = !{!96, !125, i1 false, i2 -1}
!127 = !{!96, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 0x4054330A4C8A1C4E}
!129 = distinct !{!129, !23}
!130 = !{i32 1, !74, i32 1, !48, i32 1, !19}
!131 = !{!108, !20, i1 false, i2 1}
!132 = !{!116, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 3.750000e+00}
!134 = !{!108, !133, i1 false, i2 -1}
!135 = distinct !{!135, !23}
!136 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!137 = !{i32 1, !74, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !48, i32 1, !50, i32 1, !53}
!138 = distinct !{null}
!139 = !{!140, i1 false}
!140 = !{i1 false, !45, i1 false, i2 0}
!141 = !{!142, i1 false}
!142 = !{i1 false, !143, i1 false, i2 0}
!143 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!144 = !{i1 false, !67, i1 false, i2 1}
!145 = !{i32 0}
!146 = !{i1 false, !69, i1 false, i2 1}
!147 = !{i32 2}
!148 = !{i1 false, !149, i1 false, i2 1}
!149 = !{double 0.000000e+00, double 1.600000e+01}
!150 = !{i32 3}
!151 = !{i1 false, !152, i1 false, i2 1}
!152 = !{double 0.000000e+00, double 1.500000e+01}
!153 = !{!154, !152, i1 false, i2 1}
!154 = !{!"fixp", i32 32, i32 28}
!155 = !{!51, !75, i1 false, i2 1}
!156 = !{!110, !157, i1 false, i2 1}
!157 = !{double 0.000000e+00, double 9.375000e-01}
!158 = !{!159, !157, i1 false, i2 1}
!159 = !{!"fixp", i32 32, i32 31}
!160 = !{!44, !49, i1 false, i2 1}
!161 = !{!54, !1, i1 false, i2 1}
!162 = !{!51, !52, i1 false, i2 1}
!163 = !{i1 false, !164, i1 false, i2 1}
!164 = !{double 0.000000e+00, double 2.560000e+02}
!165 = !{i1 false, !166, i1 false, i2 1}
!166 = !{double 1.000000e+00, double 2.570000e+02}
!167 = !{i32 4}
!168 = !{i1 false, !169, i1 false, i2 1}
!169 = !{double 2.000000e+00, double 2.580000e+02}
!170 = !{i1 false, !71, i1 false, i2 1}
!171 = distinct !{!171, !23}
!172 = distinct !{!172, !23}
!173 = !{i32 -1, i32 -1, i32 3, i32 -1}
!174 = !{i32 1, !74, i32 1, !74, i32 1, !48, i32 1, !19}
!175 = !{void (i32, i32, float*, i32)* @scale_2d}
!176 = distinct !{!176, !23}
!177 = distinct !{!177, !23}
