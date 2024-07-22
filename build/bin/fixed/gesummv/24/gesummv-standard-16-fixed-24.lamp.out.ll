; ModuleID = './build/bin/fixed/gesummv/24/gesummv-standard-16-fixed-24.out.ll'
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
  %A.u4_28fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !48
  %B.u4_28fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !48
  %tmp.u11_21fixp = alloca [16 x i32], align 4, !taffo.info !51
  %x.u4_28fixp = alloca [16 x i32], align 4, !taffo.info !48
  %y.u12_20fixp = alloca [16 x i32], align 4, !taffo.info !54, !taffo.target !56
  %arraydecay.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay8.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay9.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay10.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u11_21fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay11.u12_20fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u12_20fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @init_array.7_fixp(i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u4_28fixp, [16 x i32]* %arraydecay8.u4_28fixp, i32* %arraydecay9.u4_28fixp, i32* %arraydecay10.u11_21fixp, i32* %arraydecay11.u12_20fixp), !taffo.info !57, !taffo.constinfo !58
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 16), !taffo.info !57, !taffo.constinfo !59
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 16), !taffo.info !60, !taffo.constinfo !59
  %arraydecay12.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %u4_28fixp = bitcast [16 x i32]* %arraydecay12.u4_28fixp to i32*, !taffo.info !48
  call void @scale_2d.8_fixp(i32 16, i32 16, i32* %u4_28fixp, i32 16), !taffo.info !61, !taffo.constinfo !62
  %arraydecay13.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %u4_28fixp2 = bitcast [16 x i32]* %arraydecay13.u4_28fixp to i32*, !taffo.info !48
  call void @scale_2d.8_fixp(i32 16, i32 16, i32* %u4_28fixp2, i32 16), !taffo.info !61, !taffo.constinfo !62
  %arraydecay14.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u11_21fixp, i32 0, i32 0, !taffo.info !51
  call void @scale_1d.3_fixp(i32 16, i32* %arraydecay14.u11_21fixp, i32 16), !taffo.info !63, !taffo.constinfo !64
  %arraydecay15.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u4_28fixp, i32 0, i32 0, !taffo.info !48
  call void @scale_1d.4_fixp(i32 16, i32* %arraydecay15.u4_28fixp, i32 16), !taffo.info !61, !taffo.constinfo !64
  %arraydecay16.u12_20fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u12_20fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @scale_1d.6_fixp(i32 16, i32* %arraydecay16.u12_20fixp, i32 16), !taffo.info !65, !taffo.constinfo !64, !taffo.target !56
  call void @timer_start(), !taffo.constinfo !66
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !43
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !46
  %arraydecay17.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay18.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay19.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u11_21fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay20.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u4_28fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay21.u12_20fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u12_20fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @kernel_gesummv.5_fixp(i32 16, i32 %u2_30fixp1, i32 %u2_30fixp, [16 x i32]* %arraydecay17.u4_28fixp, [16 x i32]* %arraydecay18.u4_28fixp, i32* %arraydecay19.u11_21fixp, i32* %arraydecay20.u4_28fixp, i32* %arraydecay21.u12_20fixp), !taffo.info !57, !taffo.constinfo !58
  call void @timer_stop(), !taffo.constinfo !66
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u12_20fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u12_20fixp, i32 0, i32 %i.0, !taffo.info !54, !taffo.target !56
  %u12_20fixp = load i32, i32* %arrayidx.u12_20fixp, align 4, !taffo.info !54, !taffo.target !56
  %0 = uitofp i32 %u12_20fixp to float, !taffo.info !54, !taffo.target !56
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4130000000000000, !taffo.info !54, !taffo.target !56
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -1
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
  %lampsim2 = and i64 %lampsim, -536870912
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
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !82 !taffo.funinfo !83 !taffo.sourceFunction !84 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6_fixp(i32 noundef %n, i32* noundef %val.u12_20fixp, i32 noundef %factor) #0 !taffo.initweight !85 !taffo.funinfo !86 !taffo.sourceFunction !87 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u12_20fixp = getelementptr inbounds i32, i32* %val.u12_20fixp, i32 %i.0, !taffo.info !54
  %u12_20fixp = load i32, i32* %arrayidx.u12_20fixp, align 4, !taffo.info !54
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !88
  %0 = lshr i32 %u12_20fixp, 1, !taffo.info !54
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !88
  %2 = ashr i32 %0, 4, !taffo.info !54
  %3 = ashr i32 %1, 11, !taffo.info !88
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 15), !taffo.info !90
  %mul.u16_16fixp = shl i32 %4, 1, !taffo.info !93
  %arrayidx1.u12_20fixp = getelementptr inbounds i32, i32* %val.u12_20fixp, i32 %i.0, !taffo.info !54
  %5 = shl i32 %mul.u16_16fixp, 4, !taffo.info !93
  store i32 %5, i32* %arrayidx1.u12_20fixp, align 4, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !85 !taffo.funinfo !96 !taffo.sourceFunction !87 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !48
  %u4_28fixp = load i32, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !48
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !88
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !48
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !88
  %2 = ashr i32 %0, 4, !taffo.info !48
  %3 = ashr i32 %1, 3, !taffo.info !88
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 23), !taffo.info !97
  %mul.u8_24fixp = shl i32 %4, 1, !taffo.info !100
  %arrayidx1.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !48
  %5 = shl i32 %mul.u8_24fixp, 4, !taffo.info !100
  store i32 %5, i32* %arrayidx1.u4_28fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !102

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.5_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u4_28fixp, [16 x i32]* noundef %B.u4_28fixp, i32* noundef %tmp.u11_21fixp, i32* noundef %x.u4_28fixp, i32* noundef %y.u12_20fixp) #0 !taffo.initweight !103 !taffo.funinfo !104 !taffo.sourceFunction !105 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %tmp.u11_21fixp, i32 %i.0, !taffo.info !51
  store i32 0, i32* %arrayidx.u11_21fixp, align 4, !taffo.info !106, !taffo.constinfo !107
  %arrayidx1.u12_20fixp = getelementptr inbounds i32, i32* %y.u12_20fixp, i32 %i.0, !taffo.info !54
  store i32 0, i32* %arrayidx1.u12_20fixp, align 4, !taffo.info !106, !taffo.constinfo !107
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !77
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !48
  %arrayidx6.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx5.u4_28fixp, i32 0, i32 %j.0, !taffo.info !48
  %u4_28fixp4 = load i32, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !48
  %arrayidx7.u4_28fixp = getelementptr inbounds i32, i32* %x.u4_28fixp, i32 %j.0, !taffo.info !48
  %u4_28fixp = load i32, i32* %arrayidx7.u4_28fixp, align 4, !taffo.info !48
  %0 = lshr i32 %u4_28fixp4, 1, !taffo.info !48
  %1 = lshr i32 %u4_28fixp, 1, !taffo.info !48
  %2 = ashr i32 %0, 4, !taffo.info !48
  %3 = ashr i32 %1, 4, !taffo.info !48
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 23), !taffo.info !108
  %mul.u8_24fixp = shl i32 %4, 1, !taffo.info !110
  %arrayidx8.u11_21fixp = getelementptr inbounds i32, i32* %tmp.u11_21fixp, i32 %i.0, !taffo.info !51
  %u11_21fixp = load i32, i32* %arrayidx8.u11_21fixp, align 4, !taffo.info !51
  %5 = lshr i32 %mul.u8_24fixp, 3, !taffo.info !110
  %add.u11_21fixp = add i32 %5, %u11_21fixp, !taffo.info !111
  %arrayidx9.u11_21fixp = getelementptr inbounds i32, i32* %tmp.u11_21fixp, i32 %i.0, !taffo.info !51
  store i32 %add.u11_21fixp, i32* %arrayidx9.u11_21fixp, align 4, !taffo.info !63
  %arrayidx10.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u4_28fixp, i32 %i.0, !taffo.info !48
  %arrayidx11.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u4_28fixp, i32 0, i32 %j.0, !taffo.info !48
  %u4_28fixp5 = load i32, i32* %arrayidx11.u4_28fixp, align 4, !taffo.info !48
  %arrayidx12.u4_28fixp = getelementptr inbounds i32, i32* %x.u4_28fixp, i32 %j.0, !taffo.info !48
  %u4_28fixp2 = load i32, i32* %arrayidx12.u4_28fixp, align 4, !taffo.info !48
  %6 = lshr i32 %u4_28fixp5, 1, !taffo.info !48
  %7 = lshr i32 %u4_28fixp2, 1, !taffo.info !48
  %8 = ashr i32 %6, 4, !taffo.info !48
  %9 = ashr i32 %7, 4, !taffo.info !48
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 23), !taffo.info !108
  %mul13.u8_24fixp = shl i32 %10, 1, !taffo.info !110
  %arrayidx14.u12_20fixp = getelementptr inbounds i32, i32* %y.u12_20fixp, i32 %i.0, !taffo.info !54
  %u12_20fixp = load i32, i32* %arrayidx14.u12_20fixp, align 4, !taffo.info !54
  %11 = lshr i32 %mul13.u8_24fixp, 4, !taffo.info !110
  %add15.u12_20fixp = add i32 %11, %u12_20fixp, !taffo.info !113
  %arrayidx16.u12_20fixp = getelementptr inbounds i32, i32* %y.u12_20fixp, i32 %i.0, !taffo.info !54
  store i32 %add15.u12_20fixp, i32* %arrayidx16.u12_20fixp, align 4, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !115

for.end:                                          ; preds = %for.cond2
  %arrayidx17.u11_21fixp = getelementptr inbounds i32, i32* %tmp.u11_21fixp, i32 %i.0, !taffo.info !51
  %u11_21fixp1 = load i32, i32* %arrayidx17.u11_21fixp, align 4, !taffo.info !51
  %12 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !43
  %13 = lshr i32 %u11_21fixp1, 1, !taffo.info !51
  %14 = ashr i32 %12, 11, !taffo.info !43
  %15 = ashr i32 %13, 2, !taffo.info !51
  %16 = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 18), !taffo.info !116
  %mul18.u13_19fixp = shl i32 %16, 1, !taffo.info !119
  %arrayidx19.u12_20fixp = getelementptr inbounds i32, i32* %y.u12_20fixp, i32 %i.0, !taffo.info !54
  %u12_20fixp3 = load i32, i32* %arrayidx19.u12_20fixp, align 4, !taffo.info !54
  %17 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !46
  %18 = lshr i32 %u12_20fixp3, 1, !taffo.info !54
  %19 = ashr i32 %17, 11, !taffo.info !46
  %20 = ashr i32 %18, 1, !taffo.info !54
  %21 = call i32 @llvm.smul.fix.i32(i32 %19, i32 %20, i32 18), !taffo.info !121
  %mul20.u13_19fixp = shl i32 %21, 1, !taffo.info !123
  %add21.u13_19fixp = add i32 %mul18.u13_19fixp, %mul20.u13_19fixp, !taffo.info !124
  %arrayidx22.u12_20fixp = getelementptr inbounds i32, i32* %y.u12_20fixp, i32 %i.0, !taffo.info !54
  %22 = shl i32 %add21.u13_19fixp, 1, !taffo.info !124
  store i32 %22, i32* %arrayidx22.u12_20fixp, align 4, !taffo.info !65
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !126

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u11_21fixp, i32 noundef %factor) #0 !taffo.initweight !85 !taffo.funinfo !127 !taffo.sourceFunction !87 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %i.0, !taffo.info !51
  %u11_21fixp = load i32, i32* %arrayidx.u11_21fixp, align 4, !taffo.info !51
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !88
  %0 = lshr i32 %u11_21fixp, 1, !taffo.info !51
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !88
  %2 = ashr i32 %0, 4, !taffo.info !51
  %3 = ashr i32 %1, 10, !taffo.info !88
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 16), !taffo.info !128
  %mul.u15_17fixp = shl i32 %4, 1, !taffo.info !131
  %arrayidx1.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %i.0, !taffo.info !51
  %5 = shl i32 %mul.u15_17fixp, 4, !taffo.info !131
  store i32 %5, i32* %arrayidx1.u11_21fixp, align 4, !taffo.info !63
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !133

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.7_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u4_28fixp, [16 x i32]* noundef %B.u4_28fixp, i32* noundef %x.u4_28fixp, i32* noundef %tmp.u11_21fixp, i32* noundef %y.u12_20fixp) #0 !taffo.initweight !134 !taffo.funinfo !135 !taffo.sourceFunction !136 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !57, !taffo.constinfo !137
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !60, !taffo.constinfo !139
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !142, !taffo.initweight !143
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !144, !taffo.initweight !145
  br i1 %cmp, label %for.body, label %for.end26, !taffo.info !146, !taffo.initweight !148

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !149, !taffo.initweight !145
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !150
  %conv3.u5_27fixp = shl i32 %n, 27, !taffo.info !88
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !150
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !88
  %2 = ashr i32 %0, 1, !taffo.info !150
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !151
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !154
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %x.u4_28fixp, i32 %i.0, !taffo.info !150
  %4 = lshr i32 %div.u1_31fixp, 3, !taffo.info !154
  store i32 %4, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !106
  %arrayidx4.u12_20fixp = getelementptr inbounds i32, i32* %y.u12_20fixp, i32 %i.0, !taffo.info !156
  store i32 0, i32* %arrayidx4.u12_20fixp, align 4, !taffo.info !106, !taffo.constinfo !107
  %arrayidx5.u11_21fixp = getelementptr inbounds i32, i32* %tmp.u11_21fixp, i32 %i.0, !taffo.info !157
  store i32 0, i32* %arrayidx5.u11_21fixp, align 4, !taffo.info !106, !taffo.constinfo !107
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !142, !taffo.initweight !143
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.info !144, !taffo.initweight !145
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.info !146, !taffo.initweight !148

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !158, !taffo.initweight !145
  %add = add nsw i32 %mul, 1, !taffo.info !160, !taffo.initweight !148, !taffo.constinfo !21
  %rem10 = srem i32 %add, %n, !taffo.info !149, !taffo.initweight !162
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !150
  %conv12.u5_27fixp = shl i32 %n, 27, !taffo.info !88
  %5 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !150
  %6 = lshr i32 %conv12.u5_27fixp, 1, !taffo.info !88
  %7 = ashr i32 %5, 1, !taffo.info !150
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 26), !taffo.info !151
  %div13.u1_31fixp = shl i32 %8, 5, !taffo.info !154
  %arrayidx14.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !150
  %arrayidx15.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx14.u4_28fixp, i32 0, i32 %j.0, !taffo.info !150
  %9 = lshr i32 %div13.u1_31fixp, 3, !taffo.info !154
  store i32 %9, i32* %arrayidx15.u4_28fixp, align 4, !taffo.info !106
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.info !158, !taffo.initweight !145
  %add17 = add nsw i32 %mul16, 2, !taffo.info !163, !taffo.initweight !148, !taffo.constinfo !21
  %rem18 = srem i32 %add17, %n, !taffo.info !149, !taffo.initweight !162
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !150
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !88
  %10 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !150
  %11 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !88
  %12 = ashr i32 %10, 1, !taffo.info !150
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %11, i32 26), !taffo.info !151
  %div21.u1_31fixp = shl i32 %13, 5, !taffo.info !154
  %arrayidx22.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u4_28fixp, i32 %i.0, !taffo.info !150
  %arrayidx23.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u4_28fixp, i32 0, i32 %j.0, !taffo.info !150
  %14 = lshr i32 %div21.u1_31fixp, 3, !taffo.info !154
  store i32 %14, i32* %arrayidx23.u4_28fixp, align 4, !taffo.info !106
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !165, !taffo.initweight !145, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !166

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !165, !taffo.initweight !145, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !167

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !168 !taffo.funinfo !169 !taffo.sourceFunction !170 {
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
  %u4_28fixp = load i32, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !48
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !88
  %1 = lshr i32 %u4_28fixp, 1, !taffo.info !48
  %2 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !88
  %3 = ashr i32 %1, 4, !taffo.info !48
  %4 = ashr i32 %2, 3, !taffo.info !88
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 23), !taffo.info !97
  %mul.u8_24fixp = shl i32 %5, 1, !taffo.info !100
  %6 = mul nsw i32 %i.0, %m, !taffo.info !79
  %arrayidx5.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %6, !taffo.info !48
  %arrayidx6.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx5.u4_28fixp, i32 %j.0, !taffo.info !48
  %7 = shl i32 %mul.u8_24fixp, 4, !taffo.info !100
  store i32 %7, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !171

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !172

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
!1 = !{double 0.000000e+00, double 0x40A6A6667FF583A5}
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
!50 = !{double 0.000000e+00, double 1.500000e+01}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 21}
!53 = !{double 0.000000e+00, double 1.128000e+03}
!54 = !{!55, !1, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 20}
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
!83 = !{i32 1, !43, i32 1, !75}
!84 = !{void (float*, i32)* @scale_scalar}
!85 = !{i32 -1, i32 2, i32 -1}
!86 = !{i32 1, !75, i32 1, !54, i32 1, !75}
!87 = !{void (i32, float*, i32)* @scale_1d}
!88 = !{!89, !76, i1 false, i2 1}
!89 = !{!"fixp", i32 32, i32 27}
!90 = !{!91, !92, i1 false, i2 -1}
!91 = !{!"fixp", i32 -32, i32 15}
!92 = !{double 0.000000e+00, double 0x40E6A6667FF583A5}
!93 = !{!94, !92, i1 false, i2 -1}
!94 = !{!"fixp", i32 32, i32 16}
!95 = distinct !{!95, !23}
!96 = !{i32 1, !75, i32 1, !48, i32 1, !75}
!97 = !{!98, !99, i1 false, i2 -1}
!98 = !{!"fixp", i32 -32, i32 23}
!99 = !{double 0.000000e+00, double 2.400000e+02}
!100 = !{!101, !99, i1 false, i2 -1}
!101 = !{!"fixp", i32 32, i32 24}
!102 = distinct !{!102, !23}
!103 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!104 = !{i32 1, !75, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !51, i32 1, !48, i32 1, !54}
!105 = distinct !{null}
!106 = !{i1 false, i1 false, i1 false, i2 1}
!107 = !{!79, i1 false}
!108 = !{!98, !109, i1 false, i2 -1}
!109 = !{double 0.000000e+00, double 2.250000e+02}
!110 = !{!101, !109, i1 false, i2 -1}
!111 = !{!52, !112, i1 false, i2 -1}
!112 = !{double 0.000000e+00, double 1.353000e+03}
!113 = !{!55, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 0x40A868667FF583A5}
!115 = distinct !{!115, !23}
!116 = !{!117, !118, i1 false, i2 -1}
!117 = !{!"fixp", i32 -32, i32 18}
!118 = !{double 0.000000e+00, double 1.692000e+03}
!119 = !{!120, !118, i1 false, i2 -1}
!120 = !{!"fixp", i32 32, i32 19}
!121 = !{!117, !122, i1 false, i2 -1}
!122 = !{double 0.000000e+00, double 0x40AB2E14998D045F}
!123 = !{!120, !122, i1 false, i2 -1}
!124 = !{!120, !125, i1 false, i2 -1}
!125 = !{double 0.000000e+00, double 0x40B4330A4CC68230}
!126 = distinct !{!126, !23}
!127 = !{i32 1, !75, i32 1, !51, i32 1, !75}
!128 = !{!129, !130, i1 false, i2 -1}
!129 = !{!"fixp", i32 -32, i32 16}
!130 = !{double 0.000000e+00, double 1.804800e+04}
!131 = !{!132, !130, i1 false, i2 -1}
!132 = !{!"fixp", i32 32, i32 17}
!133 = distinct !{!133, !23}
!134 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!135 = !{i32 1, !75, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !48, i32 1, !51, i32 1, !54}
!136 = distinct !{null}
!137 = !{!138, i1 false}
!138 = !{i1 false, !45, i1 false, i2 0}
!139 = !{!140, i1 false}
!140 = !{i1 false, !141, i1 false, i2 0}
!141 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!142 = !{i1 false, !68, i1 false, i2 1}
!143 = !{i32 0}
!144 = !{i1 false, !70, i1 false, i2 1}
!145 = !{i32 2}
!146 = !{i1 false, !147, i1 false, i2 1}
!147 = !{double 0.000000e+00, double 1.600000e+01}
!148 = !{i32 3}
!149 = !{i1 false, !50, i1 false, i2 1}
!150 = !{!49, !50, i1 false, i2 1}
!151 = !{!152, !153, i1 false, i2 1}
!152 = !{!"fixp", i32 -32, i32 26}
!153 = !{double 0.000000e+00, double 9.375000e-01}
!154 = !{!155, !153, i1 false, i2 1}
!155 = !{!"fixp", i32 32, i32 31}
!156 = !{!55, !1, i1 false, i2 1}
!157 = !{!52, !53, i1 false, i2 1}
!158 = !{i1 false, !159, i1 false, i2 1}
!159 = !{double 0.000000e+00, double 2.560000e+02}
!160 = !{i1 false, !161, i1 false, i2 1}
!161 = !{double 1.000000e+00, double 2.570000e+02}
!162 = !{i32 4}
!163 = !{i1 false, !164, i1 false, i2 1}
!164 = !{double 2.000000e+00, double 2.580000e+02}
!165 = !{i1 false, !72, i1 false, i2 1}
!166 = distinct !{!166, !23}
!167 = distinct !{!167, !23}
!168 = !{i32 -1, i32 -1, i32 3, i32 -1}
!169 = !{i32 1, !75, i32 1, !75, i32 1, !48, i32 1, !75}
!170 = !{void (i32, i32, float*, i32)* @scale_2d}
!171 = distinct !{!171, !23}
!172 = distinct !{!172, !23}
