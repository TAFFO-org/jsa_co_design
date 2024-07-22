; ModuleID = './build/bin/fixed/syr2k/11/syr2k-standard-8-fixed-11.out.ll'
source_filename = "./sources/syr2k.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.9 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %C.u9_23fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !47, !taffo.target !49
  %A.u4_28fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !50
  %B.u4_28fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !53
  %arraydecay.u9_23fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u9_23fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay6.u4_28fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay7.u4_28fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !53
  call void @init_array.4_fixp(i32 16, i32 10, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u9_23fixp, [10 x i32]* %arraydecay6.u4_28fixp, [10 x i32]* %arraydecay7.u4_28fixp), !taffo.info !55, !taffo.constinfo !56
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 8), !taffo.info !55, !taffo.constinfo !57
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 8), !taffo.info !58, !taffo.constinfo !57
  %arraydecay8.u9_23fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u9_23fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %u9_23fixp = bitcast [16 x i32]* %arraydecay8.u9_23fixp to i32*, !taffo.info !47, !taffo.target !49
  call void @scale_2d.5_fixp(i32 16, i32 16, i32* %u9_23fixp, i32 8), !taffo.info !59, !taffo.constinfo !60, !taffo.target !49
  %arraydecay9.u4_28fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !50
  %u4_28fixp2 = bitcast [10 x i32]* %arraydecay9.u4_28fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 16, i32 10, i32* %u4_28fixp2, i32 8), !taffo.info !61, !taffo.constinfo !60
  %arraydecay10.u4_28fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !53
  %u4_28fixp = bitcast [10 x i32]* %arraydecay10.u4_28fixp to i32*, !taffo.info !53
  call void @scale_2d.6_fixp(i32 16, i32 10, i32* %u4_28fixp, i32 8), !taffo.info !62, !taffo.constinfo !60
  call void @timer_start(), !taffo.constinfo !63
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !64
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay11.u9_23fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u9_23fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay12.u4_28fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay13.u4_28fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !53
  %0 = lshr i32 %u2_30fixp1, 2, !taffo.info !64
  call void @kernel_syr2k.3_fixp(i32 16, i32 10, i32 %0, i32 %u2_30fixp, [16 x i32]* %arraydecay11.u9_23fixp, [10 x i32]* %arraydecay12.u4_28fixp, [10 x i32]* %arraydecay13.u4_28fixp), !taffo.info !55, !taffo.constinfo !56
  call void @timer_stop(), !taffo.constinfo !63
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !65
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !67
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp15 = icmp slt i32 %j.0, 16, !taffo.info !67
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %arrayidx.u9_23fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u9_23fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %arrayidx17.u9_23fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u9_23fixp, i32 0, i32 %j.0, !taffo.info !47, !taffo.target !49
  %u9_23fixp3 = load i32, i32* %arrayidx17.u9_23fixp, align 4, !taffo.info !47, !taffo.target !49
  %1 = uitofp i32 %u9_23fixp3 to float, !taffo.info !47, !taffo.target !49
  %lampsim = bitcast float %1 to i32
  %lampsim1 = and i32 %lampsim, -8192
  %lampsim2 = bitcast i32 %lampsim1 to float
  %2 = fdiv float %lampsim2, 0x4160000000000000, !taffo.info !47, !taffo.target !49
  %lampsim3 = bitcast float %2 to i32
  %lampsim4 = and i32 %lampsim3, -8192
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx18, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx19, align 4, !taffo.info !59, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %inc = add nsw i32 %j.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond14, !llvm.loop !73

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !76

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !57
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !24 !taffo.funinfo !77 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !80
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !82
  %add = add nsw i32 %mul, %j.0, !taffo.info !82
  %rem = srem i32 %add, 20, !taffo.info !82, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !80
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !57
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -4398046511104
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !84
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !85

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !86

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !91 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u9_23fixp, [10 x i32]* noundef %A.u4_28fixp, [10 x i32]* noundef %B.u4_28fixp) #0 !taffo.initweight !92 !taffo.funinfo !93 !taffo.sourceFunction !94 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !55, !taffo.constinfo !95
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !58, !taffo.constinfo !97
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !100, !taffo.initweight !101
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !102, !taffo.initweight !103
  br i1 %cmp, label %for.body, label %for.end18, !taffo.info !104, !taffo.initweight !106

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !107, !taffo.initweight !101
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !102, !taffo.initweight !103
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !109, !taffo.initweight !106

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !110, !taffo.initweight !103
  %add = add nsw i32 %mul, 1, !taffo.info !112, !taffo.initweight !106, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !114, !taffo.initweight !116
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !117
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !118
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !117
  %1 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !118
  %2 = ashr i32 %0, 1, !taffo.info !117
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !120
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !123
  %arrayidx.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !125
  %arrayidx7.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !125
  %4 = lshr i32 %div.u1_31fixp, 3, !taffo.info !123
  store i32 %4, i32* %arrayidx7.u4_28fixp, align 4, !taffo.info !126
  %mul8 = mul nsw i32 %i.0, %j.0, !taffo.info !110, !taffo.initweight !103
  %add9 = add nsw i32 %mul8, 2, !taffo.info !127, !taffo.initweight !106, !taffo.constinfo !21
  %rem10 = srem i32 %add9, %m, !taffo.info !129, !taffo.initweight !116
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !131
  %conv12.u4_28fixp = shl i32 %m, 28, !taffo.info !132
  %5 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !131
  %6 = lshr i32 %conv12.u4_28fixp, 1, !taffo.info !132
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 27), !taffo.info !133
  %div13.u1_31fixp = shl i32 %7, 4, !taffo.info !136
  %arrayidx14.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u4_28fixp, i32 %i.0, !taffo.info !137
  %arrayidx15.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u4_28fixp, i32 0, i32 %j.0, !taffo.info !137
  %8 = lshr i32 %div13.u1_31fixp, 3, !taffo.info !136
  store i32 %8, i32* %arrayidx15.u4_28fixp, align 4, !taffo.info !126
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !138, !taffo.initweight !103, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !140

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !141, !taffo.initweight !103, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !142

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc39, %for.inc38 ], !taffo.info !100, !taffo.initweight !101
  %cmp20 = icmp slt i32 %i.1, %n, !taffo.info !102, !taffo.initweight !103
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.info !104, !taffo.initweight !106

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc36, %for.inc35 ], !taffo.info !107, !taffo.initweight !101
  %cmp24 = icmp slt i32 %j.1, %n, !taffo.info !143, !taffo.initweight !103
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.info !109, !taffo.initweight !106

for.body26:                                       ; preds = %for.cond23
  %mul27 = mul nsw i32 %i.1, %j.1, !taffo.info !110, !taffo.initweight !103
  %add28 = add nsw i32 %mul27, 3, !taffo.info !144, !taffo.initweight !106, !taffo.constinfo !21
  %rem29 = srem i32 %add28, %n, !taffo.info !114, !taffo.initweight !116
  %conv30.u4_28fixp = shl i32 %rem29, 28, !taffo.info !117
  %conv31.u4_28fixp = shl i32 %m, 28, !taffo.info !132
  %9 = lshr i32 %conv30.u4_28fixp, 1, !taffo.info !117
  %10 = lshr i32 %conv31.u4_28fixp, 1, !taffo.info !132
  %11 = call i32 @llvm.sdiv.fix.i32(i32 %9, i32 %10, i32 27), !taffo.info !146
  %div32.u4_28fixp = shl i32 %11, 1, !taffo.info !148
  %arrayidx33.u9_23fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u9_23fixp, i32 %i.1, !taffo.info !149
  %arrayidx34.u9_23fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx33.u9_23fixp, i32 0, i32 %j.1, !taffo.info !149
  %12 = lshr i32 %div32.u4_28fixp, 5, !taffo.info !148
  store i32 %12, i32* %arrayidx34.u9_23fixp, align 4, !taffo.info !126
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %inc36 = add nsw i32 %j.1, 1, !taffo.info !138, !taffo.initweight !103, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !150

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %inc39 = add nsw i32 %i.1, 1, !taffo.info !141, !taffo.initweight !103, !taffo.constinfo !21
  br label %for.cond19, !llvm.loop !151

for.end40:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.3_fixp(i32 noundef %n, i32 noundef %m, i32 noundef %alpha.u4_28fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u9_23fixp, [10 x i32]* noundef %A.u4_28fixp, [10 x i32]* noundef %B.u4_28fixp) #0 !taffo.initweight !152 !taffo.funinfo !153 !taffo.sourceFunction !154 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !67
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u9_23fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u9_23fixp, i32 %i.0, !taffo.info !47
  %arrayidx4.u9_23fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u9_23fixp, i32 0, i32 %j.0, !taffo.info !47
  %u9_23fixp = load i32, i32* %arrayidx4.u9_23fixp, align 4, !taffo.info !155
  %0 = lshr i32 %u9_23fixp, 1, !taffo.info !155
  %1 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %2 = ashr i32 %0, 1, !taffo.info !155
  %3 = ashr i32 %1, 8, !taffo.info !45
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 21), !taffo.info !157
  %mul.u10_22fixp = shl i32 %4, 1, !taffo.info !160
  %5 = shl i32 %mul.u10_22fixp, 1, !taffo.info !160
  store i32 %5, i32* %arrayidx4.u9_23fixp, align 4, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !161

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !67
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !80
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc27, %for.inc26 ], !taffo.info !67
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !67
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %arrayidx11.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u4_28fixp, i32 %j.1, !taffo.info !50
  %arrayidx12.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u4_28fixp, i32 0, i32 %k.0, !taffo.info !50
  %u4_28fixp = load i32, i32* %arrayidx12.u4_28fixp, align 4, !taffo.info !50
  %6 = lshr i32 %u4_28fixp, 1, !taffo.info !50
  %7 = lshr i32 %alpha.u4_28fixp, 1, !taffo.info !64
  %8 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 27), !taffo.info !162
  %mul13.u4_28fixp = shl i32 %8, 1, !taffo.info !164
  %arrayidx14.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u4_28fixp, i32 %i.0, !taffo.info !53
  %arrayidx15.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u4_28fixp, i32 0, i32 %k.0, !taffo.info !53
  %u4_28fixp3 = load i32, i32* %arrayidx15.u4_28fixp, align 4, !taffo.info !53
  %9 = lshr i32 %mul13.u4_28fixp, 1, !taffo.info !164
  %10 = lshr i32 %u4_28fixp3, 1, !taffo.info !53
  %11 = ashr i32 %9, 4, !taffo.info !164
  %12 = ashr i32 %10, 4, !taffo.info !53
  %13 = call i32 @llvm.smul.fix.i32(i32 %11, i32 %12, i32 23), !taffo.info !165
  %mul16.u8_24fixp = shl i32 %13, 1, !taffo.info !168
  %arrayidx17.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u4_28fixp, i32 %j.1, !taffo.info !53
  %arrayidx18.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx17.u4_28fixp, i32 0, i32 %k.0, !taffo.info !53
  %u4_28fixp4 = load i32, i32* %arrayidx18.u4_28fixp, align 4, !taffo.info !53
  %14 = lshr i32 %u4_28fixp4, 1, !taffo.info !53
  %15 = lshr i32 %alpha.u4_28fixp, 1, !taffo.info !64
  %16 = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 27), !taffo.info !170
  %mul19.u4_28fixp = shl i32 %16, 1, !taffo.info !172
  %arrayidx20.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !50
  %arrayidx21.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx20.u4_28fixp, i32 0, i32 %k.0, !taffo.info !50
  %u4_28fixp2 = load i32, i32* %arrayidx21.u4_28fixp, align 4, !taffo.info !50
  %17 = lshr i32 %mul19.u4_28fixp, 1, !taffo.info !172
  %18 = lshr i32 %u4_28fixp2, 1, !taffo.info !50
  %19 = ashr i32 %17, 4, !taffo.info !172
  %20 = ashr i32 %18, 4, !taffo.info !50
  %21 = call i32 @llvm.smul.fix.i32(i32 %19, i32 %20, i32 23), !taffo.info !165
  %mul22.u8_24fixp = shl i32 %21, 1, !taffo.info !168
  %22 = lshr i32 %mul16.u8_24fixp, 2, !taffo.info !168
  %23 = lshr i32 %mul22.u8_24fixp, 2, !taffo.info !168
  %add.u10_22fixp = add i32 %22, %23, !taffo.info !173
  %arrayidx23.u9_23fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u9_23fixp, i32 %i.0, !taffo.info !47
  %arrayidx24.u9_23fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx23.u9_23fixp, i32 0, i32 %j.1, !taffo.info !47
  %u9_23fixp1 = load i32, i32* %arrayidx24.u9_23fixp, align 4, !taffo.info !155
  %24 = lshr i32 %u9_23fixp1, 1, !taffo.info !155
  %add25.u10_22fixp = add i32 %24, %add.u10_22fixp, !taffo.info !175
  %25 = shl i32 %add25.u10_22fixp, 1, !taffo.info !175
  store i32 %25, i32* %arrayidx24.u9_23fixp, align 4, !taffo.info !59
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !177

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %k.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !178

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %inc33 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !179

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !180 !taffo.funinfo !181 !taffo.sourceFunction !182 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !80
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !82
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %0, !taffo.info !50
  %arrayidx4.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx.u4_28fixp, i32 %j.0, !taffo.info !50
  %u4_28fixp = load i32, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !183
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !185
  %1 = lshr i32 %u4_28fixp, 1, !taffo.info !183
  %2 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !185
  %3 = ashr i32 %1, 2, !taffo.info !183
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 25), !taffo.info !186
  %mul.u6_26fixp = shl i32 %4, 1, !taffo.info !189
  %5 = mul nsw i32 %i.0, %m, !taffo.info !82
  %arrayidx5.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %5, !taffo.info !50
  %arrayidx6.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx5.u4_28fixp, i32 %j.0, !taffo.info !50
  %6 = shl i32 %mul.u6_26fixp, 2, !taffo.info !189
  store i32 %6, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !190

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !191

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u9_23fixp, i32 noundef %factor) #0 !taffo.initweight !180 !taffo.funinfo !192 !taffo.sourceFunction !182 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !80
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !82
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %0, !taffo.info !47
  %arrayidx4.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx.u9_23fixp, i32 %j.0, !taffo.info !47
  %u9_23fixp = load i32, i32* %arrayidx4.u9_23fixp, align 4, !taffo.info !47
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !193
  %1 = lshr i32 %u9_23fixp, 1, !taffo.info !47
  %2 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !193
  %3 = ashr i32 %1, 3, !taffo.info !47
  %4 = ashr i32 %2, 8, !taffo.info !193
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 19), !taffo.info !194
  %mul.u12_20fixp = shl i32 %5, 1, !taffo.info !197
  %6 = mul nsw i32 %i.0, %m, !taffo.info !82
  %arrayidx5.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %6, !taffo.info !47
  %arrayidx6.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx5.u9_23fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %mul.u12_20fixp, 3, !taffo.info !197
  store i32 %7, i32* %arrayidx6.u9_23fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !199

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !200

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x407F747ABFB9BED3}
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
!32 = distinct !{null, null, null}
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
!47 = !{!48, !1, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 23}
!49 = !{!"C"}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 28}
!52 = !{double 0.000000e+00, double 7.500000e+00}
!53 = !{!51, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 7.200000e+00}
!55 = !{i1 false, !44, i1 false, i2 -1}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = !{i1 false, i1 false, i1 false}
!58 = !{i1 false, !46, i1 false, i2 -1}
!59 = !{i1 false, !1, i1 false, i2 -1}
!60 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, !52, i1 false, i2 -1}
!62 = !{i1 false, !54, i1 false, i2 -1}
!63 = !{i1 false}
!64 = !{!51, !44, i1 false, i2 -1}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 1.700000e+01}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 1.000000e+00}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 2.890000e+02}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 2.890000e+02}
!73 = distinct !{!73, !23}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 1.700000e+01}
!76 = distinct !{!76, !23}
!77 = !{i32 1, !78, i32 1, !0}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.600000e+01, double 1.600000e+01}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.000000e+00, double 1.000000e+00}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 0.000000e+00, double 0.000000e+00}
!84 = !{i1 false, i1 false, i1 false, i1 false}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23}
!87 = !{i32 1, i32 -1}
!88 = !{i32 1, !42, i32 1, !89}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 8.000000e+00, double 8.000000e+00}
!91 = !{void (float*, i32)* @scale_scalar}
!92 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!93 = !{i32 1, !78, i32 1, !16, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53}
!94 = distinct !{null}
!95 = !{!96, i1 false}
!96 = !{i1 false, !44, i1 false, i2 0}
!97 = !{!98, i1 false}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!100 = !{i1 false, !66, i1 false, i2 1}
!101 = !{i32 0}
!102 = !{i1 false, !68, i1 false, i2 1}
!103 = !{i32 2}
!104 = !{i1 false, !105, i1 false, i2 1}
!105 = !{double 0.000000e+00, double 1.600000e+01}
!106 = !{i32 3}
!107 = !{i1 false, !108, i1 false, i2 1}
!108 = !{double 0.000000e+00, double 1.100000e+01}
!109 = !{i1 false, !3, i1 false, i2 1}
!110 = !{i1 false, !111, i1 false, i2 1}
!111 = !{double 0.000000e+00, double 1.600000e+02}
!112 = !{i1 false, !113, i1 false, i2 1}
!113 = !{double 1.000000e+00, double 1.610000e+02}
!114 = !{i1 false, !115, i1 false, i2 1}
!115 = !{double 0.000000e+00, double 1.500000e+01}
!116 = !{i32 4}
!117 = !{!51, !115, i1 false, i2 1}
!118 = !{!119, !79, i1 false, i2 1}
!119 = !{!"fixp", i32 32, i32 27}
!120 = !{!121, !122, i1 false, i2 1}
!121 = !{!"fixp", i32 -32, i32 26}
!122 = !{double 0.000000e+00, double 9.375000e-01}
!123 = !{!124, !122, i1 false, i2 1}
!124 = !{!"fixp", i32 32, i32 31}
!125 = !{!51, !52, i1 false, i2 1}
!126 = !{i1 false, i1 false, i1 false, i2 1}
!127 = !{i1 false, !128, i1 false, i2 1}
!128 = !{double 2.000000e+00, double 1.620000e+02}
!129 = !{i1 false, !130, i1 false, i2 1}
!130 = !{double 0.000000e+00, double 9.000000e+00}
!131 = !{!51, !130, i1 false, i2 1}
!132 = !{!51, !17, i1 false, i2 1}
!133 = !{!134, !135, i1 false, i2 1}
!134 = !{!"fixp", i32 -32, i32 27}
!135 = !{double 0.000000e+00, double 9.000000e-01}
!136 = !{!124, !135, i1 false, i2 1}
!137 = !{!51, !54, i1 false, i2 1}
!138 = !{i1 false, !139, i1 false, i2 1}
!139 = !{double 1.000000e+00, double 1.100000e+01}
!140 = distinct !{!140, !23}
!141 = !{i1 false, !75, i1 false, i2 1}
!142 = distinct !{!142, !23}
!143 = !{i1 false, !81, i1 false, i2 1}
!144 = !{i1 false, !145, i1 false, i2 1}
!145 = !{double 3.000000e+00, double 1.630000e+02}
!146 = !{!134, !147, i1 false, i2 1}
!147 = !{double 0.000000e+00, double 1.500000e+00}
!148 = !{!51, !147, i1 false, i2 1}
!149 = !{!48, !1, i1 false, i2 1}
!150 = distinct !{!150, !23}
!151 = distinct !{!151, !23}
!152 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!153 = !{i32 1, !78, i32 1, !16, i32 1, !64, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53}
!154 = distinct !{null}
!155 = !{!156, !1, i1 false, i2 -1}
!156 = !{!"fixp", i32 32, i32 22}
!157 = !{!158, !159, i1 false, i2 -1}
!158 = !{!"fixp", i32 -32, i32 21}
!159 = !{double 0.000000e+00, double 0x4082DF7CD96F727E}
!160 = !{!156, !159, i1 false, i2 -1}
!161 = distinct !{!161, !23}
!162 = !{!134, !163, i1 false, i2 -1}
!163 = !{double 0.000000e+00, double 1.125000e+01}
!164 = !{!51, !163, i1 false, i2 -1}
!165 = !{!166, !167, i1 false, i2 -1}
!166 = !{!"fixp", i32 -32, i32 23}
!167 = !{double 0.000000e+00, double 8.100000e+01}
!168 = !{!169, !167, i1 false, i2 -1}
!169 = !{!"fixp", i32 32, i32 24}
!170 = !{!134, !171, i1 false, i2 -1}
!171 = !{double 0.000000e+00, double 1.080000e+01}
!172 = !{!51, !171, i1 false, i2 -1}
!173 = !{!156, !174, i1 false, i2 -1}
!174 = !{double 0.000000e+00, double 1.620000e+02}
!175 = !{!156, !176, i1 false, i2 -1}
!176 = !{double 0.000000e+00, double 0x4084CA3D5FDCDF6A}
!177 = distinct !{!177, !23}
!178 = distinct !{!178, !23}
!179 = distinct !{!179, !23}
!180 = !{i32 -1, i32 -1, i32 3, i32 -1}
!181 = !{i32 1, !78, i32 1, !16, i32 1, !50, i32 1, !89}
!182 = !{void (i32, i32, float*, i32)* @scale_2d}
!183 = !{!184, !52, i1 false, i2 -1}
!184 = !{!"fixp", i32 32, i32 26}
!185 = !{!184, !90, i1 false, i2 1}
!186 = !{!187, !188, i1 false, i2 -1}
!187 = !{!"fixp", i32 -32, i32 25}
!188 = !{double 0.000000e+00, double 6.000000e+01}
!189 = !{!184, !188, i1 false, i2 -1}
!190 = distinct !{!190, !23}
!191 = distinct !{!191, !23}
!192 = !{i32 1, !78, i32 1, !78, i32 1, !47, i32 1, !89}
!193 = !{!51, !90, i1 false, i2 1}
!194 = !{!195, !196, i1 false, i2 -1}
!195 = !{!"fixp", i32 -32, i32 19}
!196 = !{double 0.000000e+00, double 0x40AF747ABFB9BED3}
!197 = !{!198, !196, i1 false, i2 -1}
!198 = !{!"fixp", i32 32, i32 20}
!199 = distinct !{!199, !23}
!200 = distinct !{!200, !23}
