; ModuleID = './build/bin/fixed/gesummv/16/gesummv-standard-2-fixed-16.out.ll'
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
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !43
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !46
  %arraydecay17.u2_30fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay18.u2_30fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay19.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u5_27fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay20.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u2_30fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay21.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u6_26fixp, i32 0, i32 0, !taffo.info !53, !taffo.target !55
  call void @kernel_gesummv.5_fixp(i32 16, i32 %u2_30fixp1, i32 %u2_30fixp, [16 x i32]* %arraydecay17.u2_30fixp, [16 x i32]* %arraydecay18.u2_30fixp, i32* %arraydecay19.u5_27fixp, i32* %arraydecay20.u2_30fixp, i32* %arraydecay21.u6_26fixp), !taffo.info !56, !taffo.constinfo !57
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
  %lampsim1 = and i32 %lampsim, -256
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4190000000000000, !taffo.info !53, !taffo.target !55
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -256
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
  %lampsim2 = and i64 %lampsim, -137438953472
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
define internal void @scale_1d.6_fixp(i32 noundef %n, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !84 !taffo.funinfo !85 !taffo.sourceFunction !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !53
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !87
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !89
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !87
  %1 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !89
  %2 = ashr i32 %0, 1, !taffo.info !87
  %3 = ashr i32 %1, 5, !taffo.info !89
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 24), !taffo.info !90
  %mul.u7_25fixp = shl i32 %4, 1, !taffo.info !93
  %arrayidx1.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !53
  %5 = shl i32 %mul.u7_25fixp, 1, !taffo.info !93
  store i32 %5, i32* %arrayidx1.u6_26fixp, align 4, !taffo.info !64
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !84 !taffo.funinfo !95 !taffo.sourceFunction !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !50
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !96
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !89
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !96
  %1 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !89
  %2 = ashr i32 %0, 1, !taffo.info !96
  %3 = ashr i32 %1, 4, !taffo.info !89
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 25), !taffo.info !97
  %mul.u6_26fixp = shl i32 %4, 1, !taffo.info !100
  %arrayidx1.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !50
  %5 = shl i32 %mul.u6_26fixp, 1, !taffo.info !100
  store i32 %5, i32* %arrayidx1.u5_27fixp, align 4, !taffo.info !62
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !101

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !84 !taffo.funinfo !102 !taffo.sourceFunction !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !48
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !103
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !105
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !103
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !105
  %2 = ashr i32 %0, 1, !taffo.info !103
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 28), !taffo.info !106
  %mul.u3_29fixp = shl i32 %3, 1, !taffo.info !109
  %arrayidx1.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !48
  %4 = shl i32 %mul.u3_29fixp, 1, !taffo.info !109
  store i32 %4, i32* %arrayidx1.u2_30fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.7_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u2_30fixp, [16 x i32]* noundef %B.u2_30fixp, i32* noundef %x.u2_30fixp, i32* noundef %tmp.u5_27fixp, i32* noundef %y.u6_26fixp) #0 !taffo.initweight !111 !taffo.funinfo !112 !taffo.sourceFunction !113 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !56, !taffo.constinfo !114
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !59, !taffo.constinfo !116
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !119, !taffo.initweight !120
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !121, !taffo.initweight !122
  br i1 %cmp, label %for.body, label %for.end26, !taffo.info !123, !taffo.initweight !125

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !126, !taffo.initweight !122
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !128
  %conv3.u5_27fixp = shl i32 %n, 27, !taffo.info !130
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !128
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !130
  %2 = ashr i32 %0, 1, !taffo.info !128
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !131
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !134
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %i.0, !taffo.info !136
  %4 = lshr i32 %div.u1_31fixp, 1, !taffo.info !134
  store i32 %4, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !137
  %arrayidx4.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !138
  store i32 0, i32* %arrayidx4.u6_26fixp, align 4, !taffo.info !137, !taffo.constinfo !139
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.0, !taffo.info !140
  store i32 0, i32* %arrayidx5.u5_27fixp, align 4, !taffo.info !137, !taffo.constinfo !139
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !119, !taffo.initweight !120
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.info !121, !taffo.initweight !122
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.info !123, !taffo.initweight !125

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !141, !taffo.initweight !122
  %add = add nsw i32 %mul, 1, !taffo.info !143, !taffo.initweight !125, !taffo.constinfo !21
  %rem10 = srem i32 %add, %n, !taffo.info !126, !taffo.initweight !145
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !128
  %conv12.u5_27fixp = shl i32 %n, 27, !taffo.info !130
  %5 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !128
  %6 = lshr i32 %conv12.u5_27fixp, 1, !taffo.info !130
  %7 = ashr i32 %5, 1, !taffo.info !128
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 26), !taffo.info !131
  %div13.u1_31fixp = shl i32 %8, 5, !taffo.info !134
  %arrayidx14.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !136
  %arrayidx15.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx14.u2_30fixp, i32 0, i32 %j.0, !taffo.info !136
  %9 = lshr i32 %div13.u1_31fixp, 1, !taffo.info !134
  store i32 %9, i32* %arrayidx15.u2_30fixp, align 4, !taffo.info !137
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.info !141, !taffo.initweight !122
  %add17 = add nsw i32 %mul16, 2, !taffo.info !146, !taffo.initweight !125, !taffo.constinfo !21
  %rem18 = srem i32 %add17, %n, !taffo.info !126, !taffo.initweight !145
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !128
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !130
  %10 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !128
  %11 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !130
  %12 = ashr i32 %10, 1, !taffo.info !128
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %11, i32 26), !taffo.info !131
  %div21.u1_31fixp = shl i32 %13, 5, !taffo.info !134
  %arrayidx22.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u2_30fixp, i32 %i.0, !taffo.info !136
  %arrayidx23.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u2_30fixp, i32 0, i32 %j.0, !taffo.info !136
  %14 = lshr i32 %div21.u1_31fixp, 1, !taffo.info !134
  store i32 %14, i32* %arrayidx23.u2_30fixp, align 4, !taffo.info !137
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !148, !taffo.initweight !122, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !149

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !148, !taffo.initweight !122, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !150

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.5_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u2_30fixp, [16 x i32]* noundef %B.u2_30fixp, i32* noundef %tmp.u5_27fixp, i32* noundef %x.u2_30fixp, i32* noundef %y.u6_26fixp) #0 !taffo.initweight !151 !taffo.funinfo !152 !taffo.sourceFunction !153 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.0, !taffo.info !50
  store i32 0, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !137, !taffo.constinfo !139
  %arrayidx1.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !53
  store i32 0, i32* %arrayidx1.u6_26fixp, align 4, !taffo.info !137, !taffo.constinfo !139
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !76
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !48
  %arrayidx6.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx5.u2_30fixp, i32 0, i32 %j.0, !taffo.info !48
  %u2_30fixp4 = load i32, i32* %arrayidx6.u2_30fixp, align 4, !taffo.info !103
  %arrayidx7.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %j.0, !taffo.info !48
  %u2_30fixp = load i32, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !103
  %0 = lshr i32 %u2_30fixp4, 1, !taffo.info !103
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !103
  %2 = ashr i32 %0, 3, !taffo.info !103
  %3 = ashr i32 %1, 3, !taffo.info !103
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 26), !taffo.info !154
  %mul.u5_27fixp = shl i32 %4, 1, !taffo.info !156
  %arrayidx8.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.0, !taffo.info !50
  %u5_27fixp = load i32, i32* %arrayidx8.u5_27fixp, align 4, !taffo.info !50
  %add.u5_27fixp = add i32 %mul.u5_27fixp, %u5_27fixp, !taffo.info !157
  %arrayidx9.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.0, !taffo.info !50
  store i32 %add.u5_27fixp, i32* %arrayidx9.u5_27fixp, align 4, !taffo.info !62
  %arrayidx10.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u2_30fixp, i32 %i.0, !taffo.info !48
  %arrayidx11.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u2_30fixp, i32 0, i32 %j.0, !taffo.info !48
  %u2_30fixp5 = load i32, i32* %arrayidx11.u2_30fixp, align 4, !taffo.info !103
  %arrayidx12.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %j.0, !taffo.info !48
  %u2_30fixp2 = load i32, i32* %arrayidx12.u2_30fixp, align 4, !taffo.info !103
  %5 = lshr i32 %u2_30fixp5, 1, !taffo.info !103
  %6 = lshr i32 %u2_30fixp2, 1, !taffo.info !103
  %7 = ashr i32 %5, 1, !taffo.info !103
  %8 = ashr i32 %6, 1, !taffo.info !103
  %9 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 28), !taffo.info !159
  %mul13.u3_29fixp = shl i32 %9, 1, !taffo.info !160
  %arrayidx14.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !53
  %u6_26fixp = load i32, i32* %arrayidx14.u6_26fixp, align 4, !taffo.info !53
  %10 = lshr i32 %mul13.u3_29fixp, 3, !taffo.info !160
  %add15.u6_26fixp = add i32 %10, %u6_26fixp, !taffo.info !161
  %arrayidx16.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !53
  store i32 %add15.u6_26fixp, i32* %arrayidx16.u6_26fixp, align 4, !taffo.info !64
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !163

for.end:                                          ; preds = %for.cond2
  %arrayidx17.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.0, !taffo.info !50
  %u5_27fixp1 = load i32, i32* %arrayidx17.u5_27fixp, align 4, !taffo.info !50
  %11 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !43
  %12 = lshr i32 %u5_27fixp1, 1, !taffo.info !50
  %13 = ashr i32 %11, 5, !taffo.info !43
  %14 = ashr i32 %12, 2, !taffo.info !50
  %15 = call i32 @llvm.smul.fix.i32(i32 %13, i32 %14, i32 24), !taffo.info !164
  %mul18.u7_25fixp = shl i32 %15, 1, !taffo.info !166
  %arrayidx19.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !53
  %u6_26fixp3 = load i32, i32* %arrayidx19.u6_26fixp, align 4, !taffo.info !53
  %16 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !46
  %17 = lshr i32 %u6_26fixp3, 1, !taffo.info !53
  %18 = ashr i32 %16, 5, !taffo.info !46
  %19 = ashr i32 %17, 1, !taffo.info !53
  %20 = call i32 @llvm.smul.fix.i32(i32 %18, i32 %19, i32 24), !taffo.info !167
  %mul20.u7_25fixp = shl i32 %20, 1, !taffo.info !169
  %add21.u7_25fixp = add i32 %mul18.u7_25fixp, %mul20.u7_25fixp, !taffo.info !170
  %arrayidx22.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !53
  %21 = shl i32 %add21.u7_25fixp, 1, !taffo.info !170
  store i32 %21, i32* %arrayidx22.u6_26fixp, align 4, !taffo.info !64
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !172

for.end25:                                        ; preds = %for.cond
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
  %u2_30fixp = load i32, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !103
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !105
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !103
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !105
  %3 = ashr i32 %1, 1, !taffo.info !103
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 28), !taffo.info !106
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !109
  %5 = mul nsw i32 %i.0, %m, !taffo.info !78
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %5, !taffo.info !48
  %arrayidx6.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx5.u2_30fixp, i32 %j.0, !taffo.info !48
  %6 = shl i32 %mul.u3_29fixp, 1, !taffo.info !109
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
!85 = !{i32 1, !74, i32 1, !53, i32 1, !19}
!86 = !{void (i32, float*, i32)* @scale_1d}
!87 = !{!88, !1, i1 false, i2 -1}
!88 = !{!"fixp", i32 32, i32 25}
!89 = !{!44, !20, i1 false, i2 1}
!90 = !{!91, !92, i1 false, i2 -1}
!91 = !{!"fixp", i32 -32, i32 24}
!92 = !{double 0.000000e+00, double 0x4056A6667F90D9D7}
!93 = !{!88, !92, i1 false, i2 -1}
!94 = distinct !{!94, !23}
!95 = !{i32 1, !74, i32 1, !50, i32 1, !19}
!96 = !{!54, !52, i1 false, i2 -1}
!97 = !{!98, !99, i1 false, i2 -1}
!98 = !{!"fixp", i32 -32, i32 25}
!99 = !{double 0.000000e+00, double 3.525000e+01}
!100 = !{!54, !99, i1 false, i2 -1}
!101 = distinct !{!101, !23}
!102 = !{i32 1, !74, i32 1, !48, i32 1, !19}
!103 = !{!104, !49, i1 false, i2 -1}
!104 = !{!"fixp", i32 32, i32 29}
!105 = !{!104, !20, i1 false, i2 1}
!106 = !{!107, !108, i1 false, i2 -1}
!107 = !{!"fixp", i32 -32, i32 28}
!108 = !{double 0.000000e+00, double 3.750000e+00}
!109 = !{!104, !108, i1 false, i2 -1}
!110 = distinct !{!110, !23}
!111 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!112 = !{i32 1, !74, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !48, i32 1, !50, i32 1, !53}
!113 = distinct !{null}
!114 = !{!115, i1 false}
!115 = !{i1 false, !45, i1 false, i2 0}
!116 = !{!117, i1 false}
!117 = !{i1 false, !118, i1 false, i2 0}
!118 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!119 = !{i1 false, !67, i1 false, i2 1}
!120 = !{i32 0}
!121 = !{i1 false, !69, i1 false, i2 1}
!122 = !{i32 2}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 0.000000e+00, double 1.600000e+01}
!125 = !{i32 3}
!126 = !{i1 false, !127, i1 false, i2 1}
!127 = !{double 0.000000e+00, double 1.500000e+01}
!128 = !{!129, !127, i1 false, i2 1}
!129 = !{!"fixp", i32 32, i32 28}
!130 = !{!51, !75, i1 false, i2 1}
!131 = !{!132, !133, i1 false, i2 1}
!132 = !{!"fixp", i32 -32, i32 26}
!133 = !{double 0.000000e+00, double 9.375000e-01}
!134 = !{!135, !133, i1 false, i2 1}
!135 = !{!"fixp", i32 32, i32 31}
!136 = !{!44, !49, i1 false, i2 1}
!137 = !{i1 false, i1 false, i1 false, i2 1}
!138 = !{!54, !1, i1 false, i2 1}
!139 = !{!78, i1 false}
!140 = !{!51, !52, i1 false, i2 1}
!141 = !{i1 false, !142, i1 false, i2 1}
!142 = !{double 0.000000e+00, double 2.560000e+02}
!143 = !{i1 false, !144, i1 false, i2 1}
!144 = !{double 1.000000e+00, double 2.570000e+02}
!145 = !{i32 4}
!146 = !{i1 false, !147, i1 false, i2 1}
!147 = !{double 2.000000e+00, double 2.580000e+02}
!148 = !{i1 false, !71, i1 false, i2 1}
!149 = distinct !{!149, !23}
!150 = distinct !{!150, !23}
!151 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!152 = !{i32 1, !74, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !50, i32 1, !48, i32 1, !53}
!153 = distinct !{null}
!154 = !{!132, !155, i1 false, i2 -1}
!155 = !{double 0.000000e+00, double 0x400C200000000000}
!156 = !{!51, !155, i1 false, i2 -1}
!157 = !{!51, !158, i1 false, i2 -1}
!158 = !{double 0.000000e+00, double 0x4035240000000000}
!159 = !{!107, !155, i1 false, i2 -1}
!160 = !{!104, !155, i1 false, i2 -1}
!161 = !{!54, !162, i1 false, i2 -1}
!162 = !{double 0.000000e+00, double 0x404868667F90D9D7}
!163 = distinct !{!163, !23}
!164 = !{!91, !165, i1 false, i2 -1}
!165 = !{double 0.000000e+00, double 2.643750e+01}
!166 = !{!88, !165, i1 false, i2 -1}
!167 = !{!91, !168, i1 false, i2 -1}
!168 = !{double 0.000000e+00, double 0x404B2E149914389B}
!169 = !{!88, !168, i1 false, i2 -1}
!170 = !{!88, !171, i1 false, i2 -1}
!171 = !{double 0.000000e+00, double 0x4054330A4C8A1C4E}
!172 = distinct !{!172, !23}
!173 = !{i32 -1, i32 -1, i32 3, i32 -1}
!174 = !{i32 1, !74, i32 1, !74, i32 1, !48, i32 1, !19}
!175 = !{void (i32, i32, float*, i32)* @scale_2d}
!176 = distinct !{!176, !23}
!177 = distinct !{!177, !23}
