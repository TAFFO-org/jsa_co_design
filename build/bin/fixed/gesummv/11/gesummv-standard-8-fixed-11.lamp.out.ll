; ModuleID = './build/bin/fixed/gesummv/11/gesummv-standard-8-fixed-11.out.ll'
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
  %A.u4_28fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !48
  %B.u4_28fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !48
  %tmp.u9_23fixp = alloca [16 x i32], align 4, !taffo.info !51
  %x.u4_28fixp = alloca [16 x i32], align 4, !taffo.info !48
  %y.u10_22fixp = alloca [16 x i32], align 4, !taffo.info !54, !taffo.target !56
  %arraydecay.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay8.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay9.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay10.u9_23fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u9_23fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay11.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u10_22fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @init_array.7_fixp(i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u4_28fixp, [16 x i32]* %arraydecay8.u4_28fixp, i32* %arraydecay9.u4_28fixp, i32* %arraydecay10.u9_23fixp, i32* %arraydecay11.u10_22fixp), !taffo.info !57, !taffo.constinfo !58
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 8), !taffo.info !57, !taffo.constinfo !59
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 8), !taffo.info !60, !taffo.constinfo !59
  %arraydecay12.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %u4_28fixp = bitcast [16 x i32]* %arraydecay12.u4_28fixp to i32*, !taffo.info !48
  call void @scale_2d.8_fixp(i32 16, i32 16, i32* %u4_28fixp, i32 8), !taffo.info !61, !taffo.constinfo !62
  %arraydecay13.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %u4_28fixp2 = bitcast [16 x i32]* %arraydecay13.u4_28fixp to i32*, !taffo.info !48
  call void @scale_2d.8_fixp(i32 16, i32 16, i32* %u4_28fixp2, i32 8), !taffo.info !61, !taffo.constinfo !62
  %arraydecay14.u9_23fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u9_23fixp, i32 0, i32 0, !taffo.info !51
  call void @scale_1d.3_fixp(i32 16, i32* %arraydecay14.u9_23fixp, i32 8), !taffo.info !63, !taffo.constinfo !64
  %arraydecay15.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u4_28fixp, i32 0, i32 0, !taffo.info !48
  call void @scale_1d.4_fixp(i32 16, i32* %arraydecay15.u4_28fixp, i32 8), !taffo.info !61, !taffo.constinfo !64
  %arraydecay16.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u10_22fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @scale_1d.6_fixp(i32 16, i32* %arraydecay16.u10_22fixp, i32 8), !taffo.info !65, !taffo.constinfo !64, !taffo.target !56
  call void @timer_start(), !taffo.constinfo !66
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !43
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !46
  %arraydecay17.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay18.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay19.u9_23fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u9_23fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay20.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay21.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u10_22fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @kernel_gesummv.5_fixp(i32 16, i32 %u2_30fixp1, i32 %u2_30fixp, [16 x i32]* %arraydecay17.u4_28fixp, [16 x i32]* %arraydecay18.u4_28fixp, i32* %arraydecay19.u9_23fixp, i32* %arraydecay20.u4_28fixp, i32* %arraydecay21.u10_22fixp), !taffo.info !57, !taffo.constinfo !58
  call void @timer_stop(), !taffo.constinfo !66
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u10_22fixp, i32 0, i32 %i.0, !taffo.info !54, !taffo.target !56
  %u10_22fixp = load i32, i32* %arrayidx.u10_22fixp, align 4, !taffo.info !54, !taffo.target !56
  %0 = uitofp i32 %u10_22fixp to float, !taffo.info !54, !taffo.target !56
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -8192
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4150000000000000, !taffo.info !54, !taffo.target !56
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -8192
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx22, align 4, !taffo.info !65, !taffo.target !56
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 16, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !59
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !24 !taffo.funinfo !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !79, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !77
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -4398046511104
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !64
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !82 !taffo.funinfo !83 !taffo.sourceFunction !86 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6_fixp(i32 noundef %n, i32* noundef %val.u10_22fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %i.0, !taffo.info !54
  %u10_22fixp = load i32, i32* %arrayidx.u10_22fixp, align 4, !taffo.info !54
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !90
  %0 = lshr i32 %u10_22fixp, 1, !taffo.info !54
  %1 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !90
  %2 = ashr i32 %0, 3, !taffo.info !54
  %3 = ashr i32 %1, 9, !taffo.info !90
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 18), !taffo.info !91
  %mul.u13_19fixp = shl i32 %4, 1, !taffo.info !94
  %arrayidx1.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %i.0, !taffo.info !54
  %5 = shl i32 %mul.u13_19fixp, 3, !taffo.info !94
  store i32 %5, i32* %arrayidx1.u10_22fixp, align 4, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !97 !taffo.sourceFunction !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !48
  %u4_28fixp = load i32, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !98
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !100
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !98
  %1 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !100
  %2 = ashr i32 %0, 2, !taffo.info !98
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 25), !taffo.info !101
  %mul.u6_26fixp = shl i32 %3, 1, !taffo.info !104
  %arrayidx1.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !48
  %4 = shl i32 %mul.u6_26fixp, 2, !taffo.info !104
  store i32 %4, i32* %arrayidx1.u4_28fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !105

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.5_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u4_28fixp, [16 x i32]* noundef %B.u4_28fixp, i32* noundef %tmp.u9_23fixp, i32* noundef %x.u4_28fixp, i32* noundef %y.u10_22fixp) #0 !taffo.initweight !106 !taffo.funinfo !107 !taffo.sourceFunction !108 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %tmp.u9_23fixp, i32 %i.0, !taffo.info !51
  store i32 0, i32* %arrayidx.u9_23fixp, align 4, !taffo.info !109, !taffo.constinfo !110
  %arrayidx1.u10_22fixp = getelementptr inbounds i32, i32* %y.u10_22fixp, i32 %i.0, !taffo.info !54
  store i32 0, i32* %arrayidx1.u10_22fixp, align 4, !taffo.info !109, !taffo.constinfo !110
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !77
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !48
  %arrayidx6.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx5.u4_28fixp, i32 0, i32 %j.0, !taffo.info !48
  %u4_28fixp4 = load i32, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !98
  %arrayidx7.u4_28fixp = getelementptr inbounds i32, i32* %x.u4_28fixp, i32 %j.0, !taffo.info !48
  %u4_28fixp = load i32, i32* %arrayidx7.u4_28fixp, align 4, !taffo.info !98
  %0 = lshr i32 %u4_28fixp4, 1, !taffo.info !98
  %1 = lshr i32 %u4_28fixp, 1, !taffo.info !98
  %2 = ashr i32 %0, 2, !taffo.info !98
  %3 = ashr i32 %1, 2, !taffo.info !98
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 25), !taffo.info !111
  %mul.u6_26fixp = shl i32 %4, 1, !taffo.info !113
  %arrayidx8.u9_23fixp = getelementptr inbounds i32, i32* %tmp.u9_23fixp, i32 %i.0, !taffo.info !51
  %u9_23fixp = load i32, i32* %arrayidx8.u9_23fixp, align 4, !taffo.info !51
  %5 = lshr i32 %mul.u6_26fixp, 3, !taffo.info !113
  %add.u9_23fixp = add i32 %5, %u9_23fixp, !taffo.info !114
  %arrayidx9.u9_23fixp = getelementptr inbounds i32, i32* %tmp.u9_23fixp, i32 %i.0, !taffo.info !51
  store i32 %add.u9_23fixp, i32* %arrayidx9.u9_23fixp, align 4, !taffo.info !63
  %arrayidx10.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u4_28fixp, i32 %i.0, !taffo.info !48
  %arrayidx11.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u4_28fixp, i32 0, i32 %j.0, !taffo.info !48
  %u4_28fixp5 = load i32, i32* %arrayidx11.u4_28fixp, align 4, !taffo.info !98
  %arrayidx12.u4_28fixp = getelementptr inbounds i32, i32* %x.u4_28fixp, i32 %j.0, !taffo.info !48
  %u4_28fixp2 = load i32, i32* %arrayidx12.u4_28fixp, align 4, !taffo.info !98
  %6 = lshr i32 %u4_28fixp5, 1, !taffo.info !98
  %7 = lshr i32 %u4_28fixp2, 1, !taffo.info !98
  %8 = ashr i32 %6, 2, !taffo.info !98
  %9 = ashr i32 %7, 2, !taffo.info !98
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 25), !taffo.info !111
  %mul13.u6_26fixp = shl i32 %10, 1, !taffo.info !113
  %arrayidx14.u10_22fixp = getelementptr inbounds i32, i32* %y.u10_22fixp, i32 %i.0, !taffo.info !54
  %u10_22fixp = load i32, i32* %arrayidx14.u10_22fixp, align 4, !taffo.info !54
  %11 = lshr i32 %mul13.u6_26fixp, 4, !taffo.info !113
  %add15.u10_22fixp = add i32 %11, %u10_22fixp, !taffo.info !116
  %arrayidx16.u10_22fixp = getelementptr inbounds i32, i32* %y.u10_22fixp, i32 %i.0, !taffo.info !54
  store i32 %add15.u10_22fixp, i32* %arrayidx16.u10_22fixp, align 4, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !118

for.end:                                          ; preds = %for.cond2
  %arrayidx17.u9_23fixp = getelementptr inbounds i32, i32* %tmp.u9_23fixp, i32 %i.0, !taffo.info !51
  %u9_23fixp1 = load i32, i32* %arrayidx17.u9_23fixp, align 4, !taffo.info !51
  %12 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !43
  %13 = lshr i32 %u9_23fixp1, 1, !taffo.info !51
  %14 = ashr i32 %12, 9, !taffo.info !43
  %15 = ashr i32 %13, 2, !taffo.info !51
  %16 = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 20), !taffo.info !119
  %mul18.u11_21fixp = shl i32 %16, 1, !taffo.info !122
  %arrayidx19.u10_22fixp = getelementptr inbounds i32, i32* %y.u10_22fixp, i32 %i.0, !taffo.info !54
  %u10_22fixp3 = load i32, i32* %arrayidx19.u10_22fixp, align 4, !taffo.info !54
  %17 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !46
  %18 = lshr i32 %u10_22fixp3, 1, !taffo.info !54
  %19 = ashr i32 %17, 9, !taffo.info !46
  %20 = ashr i32 %18, 1, !taffo.info !54
  %21 = call i32 @llvm.smul.fix.i32(i32 %19, i32 %20, i32 20), !taffo.info !124
  %mul20.u11_21fixp = shl i32 %21, 1, !taffo.info !126
  %add21.u11_21fixp = add i32 %mul18.u11_21fixp, %mul20.u11_21fixp, !taffo.info !127
  %arrayidx22.u10_22fixp = getelementptr inbounds i32, i32* %y.u10_22fixp, i32 %i.0, !taffo.info !54
  %22 = shl i32 %add21.u11_21fixp, 1, !taffo.info !127
  store i32 %22, i32* %arrayidx22.u10_22fixp, align 4, !taffo.info !65
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !129

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u9_23fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !130 !taffo.sourceFunction !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %i.0, !taffo.info !51
  %u9_23fixp = load i32, i32* %arrayidx.u9_23fixp, align 4, !taffo.info !51
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !90
  %0 = lshr i32 %u9_23fixp, 1, !taffo.info !51
  %1 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !90
  %2 = ashr i32 %0, 3, !taffo.info !51
  %3 = ashr i32 %1, 8, !taffo.info !90
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 19), !taffo.info !131
  %mul.u12_20fixp = shl i32 %4, 1, !taffo.info !134
  %arrayidx1.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %i.0, !taffo.info !51
  %5 = shl i32 %mul.u12_20fixp, 3, !taffo.info !134
  store i32 %5, i32* %arrayidx1.u9_23fixp, align 4, !taffo.info !63
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !136

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.7_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u4_28fixp, [16 x i32]* noundef %B.u4_28fixp, i32* noundef %x.u4_28fixp, i32* noundef %tmp.u9_23fixp, i32* noundef %y.u10_22fixp) #0 !taffo.initweight !137 !taffo.funinfo !138 !taffo.sourceFunction !139 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !57, !taffo.constinfo !140
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !60, !taffo.constinfo !142
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !145, !taffo.initweight !146
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !147, !taffo.initweight !148
  br i1 %cmp, label %for.body, label %for.end26, !taffo.info !149, !taffo.initweight !151

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !152, !taffo.initweight !148
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !154
  %conv3.u5_27fixp = shl i32 %n, 27, !taffo.info !155
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !154
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !155
  %2 = ashr i32 %0, 1, !taffo.info !154
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !157
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !160
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %x.u4_28fixp, i32 %i.0, !taffo.info !162
  %4 = lshr i32 %div.u1_31fixp, 3, !taffo.info !160
  store i32 %4, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !109
  %arrayidx4.u10_22fixp = getelementptr inbounds i32, i32* %y.u10_22fixp, i32 %i.0, !taffo.info !163
  store i32 0, i32* %arrayidx4.u10_22fixp, align 4, !taffo.info !109, !taffo.constinfo !110
  %arrayidx5.u9_23fixp = getelementptr inbounds i32, i32* %tmp.u9_23fixp, i32 %i.0, !taffo.info !164
  store i32 0, i32* %arrayidx5.u9_23fixp, align 4, !taffo.info !109, !taffo.constinfo !110
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !145, !taffo.initweight !146
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.info !147, !taffo.initweight !148
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.info !149, !taffo.initweight !151

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !165, !taffo.initweight !148
  %add = add nsw i32 %mul, 1, !taffo.info !167, !taffo.initweight !151, !taffo.constinfo !21
  %rem10 = srem i32 %add, %n, !taffo.info !152, !taffo.initweight !169
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !154
  %conv12.u5_27fixp = shl i32 %n, 27, !taffo.info !155
  %5 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !154
  %6 = lshr i32 %conv12.u5_27fixp, 1, !taffo.info !155
  %7 = ashr i32 %5, 1, !taffo.info !154
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 26), !taffo.info !157
  %div13.u1_31fixp = shl i32 %8, 5, !taffo.info !160
  %arrayidx14.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !162
  %arrayidx15.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx14.u4_28fixp, i32 0, i32 %j.0, !taffo.info !162
  %9 = lshr i32 %div13.u1_31fixp, 3, !taffo.info !160
  store i32 %9, i32* %arrayidx15.u4_28fixp, align 4, !taffo.info !109
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.info !165, !taffo.initweight !148
  %add17 = add nsw i32 %mul16, 2, !taffo.info !170, !taffo.initweight !151, !taffo.constinfo !21
  %rem18 = srem i32 %add17, %n, !taffo.info !152, !taffo.initweight !169
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !154
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !155
  %10 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !154
  %11 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !155
  %12 = ashr i32 %10, 1, !taffo.info !154
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %11, i32 26), !taffo.info !157
  %div21.u1_31fixp = shl i32 %13, 5, !taffo.info !160
  %arrayidx22.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u4_28fixp, i32 %i.0, !taffo.info !162
  %arrayidx23.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u4_28fixp, i32 0, i32 %j.0, !taffo.info !162
  %14 = lshr i32 %div21.u1_31fixp, 3, !taffo.info !160
  store i32 %14, i32* %arrayidx23.u4_28fixp, align 4, !taffo.info !109
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !172, !taffo.initweight !148, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !173

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !172, !taffo.initweight !148, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !174

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !175 !taffo.funinfo !176 !taffo.sourceFunction !177 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !77
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !79
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %0, !taffo.info !48
  %arrayidx4.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx.u4_28fixp, i32 %j.0, !taffo.info !48
  %u4_28fixp = load i32, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !98
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !100
  %1 = lshr i32 %u4_28fixp, 1, !taffo.info !98
  %2 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !100
  %3 = ashr i32 %1, 2, !taffo.info !98
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 25), !taffo.info !101
  %mul.u6_26fixp = shl i32 %4, 1, !taffo.info !104
  %5 = mul nsw i32 %i.0, %m, !taffo.info !79
  %arrayidx5.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %5, !taffo.info !48
  %arrayidx6.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx5.u4_28fixp, i32 %j.0, !taffo.info !48
  %6 = shl i32 %mul.u6_26fixp, 2, !taffo.info !104
  store i32 %6, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !178

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !179

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
!1 = !{double 0.000000e+00, double 0x4086A66680171194}
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
!48 = !{!49, !50, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 28}
!50 = !{double 0.000000e+00, double 7.500000e+00}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 23}
!53 = !{double 0.000000e+00, double 2.820000e+02}
!54 = !{!55, !1, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 22}
!56 = !{!"y"}
!57 = !{i1 false, !45, i1 false, i2 -1}
!58 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!59 = !{i1 false, i1 false, i1 false}
!60 = !{i1 false, !47, i1 false, i2 -1}
!61 = !{i1 false, !50, i1 false, i2 -1}
!62 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!63 = !{i1 false, !53, i1 false, i2 -1}
!64 = !{i1 false, i1 false, i1 false, i1 false}
!65 = !{i1 false, !1, i1 false, i2 -1}
!66 = !{i1 false}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 1.700000e+01}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 1.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 1.700000e+01}
!73 = distinct !{!73, !23}
!74 = !{i32 1, !75, i32 1, !0}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 1.600000e+01, double 1.600000e+01}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 1.000000e+00, double 1.000000e+00}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 0.000000e+00, double 0.000000e+00}
!81 = distinct !{!81, !23}
!82 = !{i32 1, i32 -1}
!83 = !{i32 1, !43, i32 1, !84}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 8.000000e+00, double 8.000000e+00}
!86 = !{void (float*, i32)* @scale_scalar}
!87 = !{i32 -1, i32 2, i32 -1}
!88 = !{i32 1, !75, i32 1, !54, i32 1, !84}
!89 = !{void (i32, float*, i32)* @scale_1d}
!90 = !{!49, !85, i1 false, i2 1}
!91 = !{!92, !93, i1 false, i2 -1}
!92 = !{!"fixp", i32 -32, i32 18}
!93 = !{double 0.000000e+00, double 0x40B6A66680171194}
!94 = !{!95, !93, i1 false, i2 -1}
!95 = !{!"fixp", i32 32, i32 19}
!96 = distinct !{!96, !23}
!97 = !{i32 1, !75, i32 1, !48, i32 1, !84}
!98 = !{!99, !50, i1 false, i2 -1}
!99 = !{!"fixp", i32 32, i32 26}
!100 = !{!99, !85, i1 false, i2 1}
!101 = !{!102, !103, i1 false, i2 -1}
!102 = !{!"fixp", i32 -32, i32 25}
!103 = !{double 0.000000e+00, double 6.000000e+01}
!104 = !{!99, !103, i1 false, i2 -1}
!105 = distinct !{!105, !23}
!106 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!107 = !{i32 1, !75, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !51, i32 1, !48, i32 1, !54}
!108 = distinct !{null}
!109 = !{i1 false, i1 false, i1 false, i2 1}
!110 = !{!79, i1 false}
!111 = !{!102, !112, i1 false, i2 -1}
!112 = !{double 0.000000e+00, double 5.625000e+01}
!113 = !{!99, !112, i1 false, i2 -1}
!114 = !{!52, !115, i1 false, i2 -1}
!115 = !{double 0.000000e+00, double 3.382500e+02}
!116 = !{!55, !117, i1 false, i2 -1}
!117 = !{double 0.000000e+00, double 0x4088686680171194}
!118 = distinct !{!118, !23}
!119 = !{!120, !121, i1 false, i2 -1}
!120 = !{!"fixp", i32 -32, i32 20}
!121 = !{double 0.000000e+00, double 4.230000e+02}
!122 = !{!123, !121, i1 false, i2 -1}
!123 = !{!"fixp", i32 32, i32 21}
!124 = !{!120, !125, i1 false, i2 -1}
!125 = !{double 0.000000e+00, double 0x408B2E1499B5484B}
!126 = !{!123, !125, i1 false, i2 -1}
!127 = !{!123, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 0x4094330A4CDAA426}
!129 = distinct !{!129, !23}
!130 = !{i32 1, !75, i32 1, !51, i32 1, !84}
!131 = !{!132, !133, i1 false, i2 -1}
!132 = !{!"fixp", i32 -32, i32 19}
!133 = !{double 0.000000e+00, double 2.256000e+03}
!134 = !{!135, !133, i1 false, i2 -1}
!135 = !{!"fixp", i32 32, i32 20}
!136 = distinct !{!136, !23}
!137 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!138 = !{i32 1, !75, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !48, i32 1, !51, i32 1, !54}
!139 = distinct !{null}
!140 = !{!141, i1 false}
!141 = !{i1 false, !45, i1 false, i2 0}
!142 = !{!143, i1 false}
!143 = !{i1 false, !144, i1 false, i2 0}
!144 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!145 = !{i1 false, !68, i1 false, i2 1}
!146 = !{i32 0}
!147 = !{i1 false, !70, i1 false, i2 1}
!148 = !{i32 2}
!149 = !{i1 false, !150, i1 false, i2 1}
!150 = !{double 0.000000e+00, double 1.600000e+01}
!151 = !{i32 3}
!152 = !{i1 false, !153, i1 false, i2 1}
!153 = !{double 0.000000e+00, double 1.500000e+01}
!154 = !{!49, !153, i1 false, i2 1}
!155 = !{!156, !76, i1 false, i2 1}
!156 = !{!"fixp", i32 32, i32 27}
!157 = !{!158, !159, i1 false, i2 1}
!158 = !{!"fixp", i32 -32, i32 26}
!159 = !{double 0.000000e+00, double 9.375000e-01}
!160 = !{!161, !159, i1 false, i2 1}
!161 = !{!"fixp", i32 32, i32 31}
!162 = !{!49, !50, i1 false, i2 1}
!163 = !{!55, !1, i1 false, i2 1}
!164 = !{!52, !53, i1 false, i2 1}
!165 = !{i1 false, !166, i1 false, i2 1}
!166 = !{double 0.000000e+00, double 2.560000e+02}
!167 = !{i1 false, !168, i1 false, i2 1}
!168 = !{double 1.000000e+00, double 2.570000e+02}
!169 = !{i32 4}
!170 = !{i1 false, !171, i1 false, i2 1}
!171 = !{double 2.000000e+00, double 2.580000e+02}
!172 = !{i1 false, !72, i1 false, i2 1}
!173 = distinct !{!173, !23}
!174 = distinct !{!174, !23}
!175 = !{i32 -1, i32 -1, i32 3, i32 -1}
!176 = !{i32 1, !75, i32 1, !75, i32 1, !48, i32 1, !84}
!177 = !{void (i32, i32, float*, i32)* @scale_2d}
!178 = distinct !{!178, !23}
!179 = distinct !{!179, !23}
