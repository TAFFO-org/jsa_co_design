; ModuleID = './build/bin/fixed/symm/11/symm-standard-2-fixed-11.out.ll'
source_filename = "./sources/symm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
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
  %C.u8_24fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !47, !taffo.target !49
  %A.s12_20fixp = alloca [10 x [10 x i32]], align 4, !taffo.info !50
  %B.u3_29fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !53
  %arraydecay.u8_24fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u8_24fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay6.s12_20fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.s12_20fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay7.u3_29fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u3_29fixp, i32 0, i32 0, !taffo.info !53
  call void @init_array.4_fixp(i32 10, i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u8_24fixp, [10 x i32]* %arraydecay6.s12_20fixp, [16 x i32]* %arraydecay7.u3_29fixp), !taffo.info !56, !taffo.constinfo !57
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 2), !taffo.info !56, !taffo.constinfo !58
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 2), !taffo.info !59, !taffo.constinfo !58
  %arraydecay8.u8_24fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u8_24fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %u8_24fixp = bitcast [16 x i32]* %arraydecay8.u8_24fixp to i32*, !taffo.info !47, !taffo.target !49
  call void @scale_2d.5_fixp(i32 10, i32 16, i32* %u8_24fixp, i32 2), !taffo.info !60, !taffo.constinfo !61, !taffo.target !49
  %arraydecay9.s12_20fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.s12_20fixp, i32 0, i32 0, !taffo.info !50
  %s12_20fixp = bitcast [10 x i32]* %arraydecay9.s12_20fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 10, i32 10, i32* %s12_20fixp, i32 2), !taffo.info !62, !taffo.constinfo !61
  %arraydecay10.u3_29fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u3_29fixp, i32 0, i32 0, !taffo.info !53
  %u3_29fixp = bitcast [16 x i32]* %arraydecay10.u3_29fixp to i32*, !taffo.info !53
  call void @scale_2d.7_fixp(i32 10, i32 16, i32* %u3_29fixp, i32 2), !taffo.info !63, !taffo.constinfo !61
  call void @timer_start(), !taffo.constinfo !64
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !65
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay11.u8_24fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u8_24fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay12.s12_20fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.s12_20fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay13.u3_29fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u3_29fixp, i32 0, i32 0, !taffo.info !53
  %0 = lshr i32 %u2_30fixp, 2, !taffo.info !65
  call void @kernel_symm.3_fixp(i32 10, i32 16, i32 %0, i32 %u2_30fixp1, [16 x i32]* %arraydecay11.u8_24fixp, [10 x i32]* %arraydecay12.s12_20fixp, [16 x i32]* %arraydecay13.u3_29fixp), !taffo.info !56, !taffo.constinfo !57
  call void @timer_stop(), !taffo.constinfo !64
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp15 = icmp slt i32 %j.0, 16, !taffo.info !69
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %arrayidx.u8_24fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u8_24fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %arrayidx17.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u8_24fixp, i32 0, i32 %j.0, !taffo.info !47, !taffo.target !49
  %u8_24fixp2 = load i32, i32* %arrayidx17.u8_24fixp, align 4, !taffo.info !47, !taffo.target !49
  %1 = uitofp i32 %u8_24fixp2 to float, !taffo.info !47, !taffo.target !49
  %lampsim = bitcast float %1 to i32
  %lampsim1 = and i32 %lampsim, -8192
  %lampsim2 = bitcast i32 %lampsim1 to float
  %2 = fdiv float %lampsim2, 0x4170000000000000, !taffo.info !47, !taffo.target !49
  %lampsim3 = bitcast float %2 to i32
  %lampsim4 = and i32 %lampsim3, -8192
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx18 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx18, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx19, align 4, !taffo.info !60, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond14, !llvm.loop !75

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !78

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !79
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !27 !taffo.funinfo !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !83
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !85
  %add = add nsw i32 %mul, %j.0, !taffo.info !85
  %rem = srem i32 %add, 20, !taffo.info !85, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !83
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !58
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
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !79
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !87

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !88

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !89 !taffo.funinfo !90 !taffo.sourceFunction !91 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm.3_fixp(i32 noundef %m, i32 noundef %n, i32 noundef %alpha.u4_28fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u8_24fixp, [10 x i32]* noundef %A.s12_20fixp, [16 x i32]* noundef %B.u3_29fixp) #0 !taffo.initweight !92 !taffo.funinfo !93 !taffo.sourceFunction !94 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc37, %for.inc36 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc33, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc34, %for.inc33 ], !taffo.info !69
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !83
  br i1 %cmp2, label %for.body3, label %for.end35

for.body3:                                        ; preds = %for.cond1
  %0 = lshr i32 0, 15
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !69
  %temp2.0.s15_17fixp = phi i32 [ %0, %for.body3 ], [ %add18.s15_17fixp, %for.inc ], !taffo.info !95
  %cmp5 = icmp slt i32 %k.0, %i.0, !taffo.info !85
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u3_29fixp, i32 %i.0, !taffo.info !53
  %arrayidx7.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u3_29fixp, i32 0, i32 %j.0, !taffo.info !53
  %u3_29fixp = load i32, i32* %arrayidx7.u3_29fixp, align 4, !taffo.info !98
  %1 = lshr i32 %alpha.u4_28fixp, 1, !taffo.info !65
  %2 = lshr i32 %u3_29fixp, 1, !taffo.info !98
  %3 = ashr i32 %2, 1, !taffo.info !98
  %4 = call i32 @llvm.smul.fix.i32(i32 %1, i32 %3, i32 27), !taffo.info !99
  %mul.u4_28fixp = shl i32 %4, 1, !taffo.info !102
  %arrayidx8.s12_20fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s12_20fixp, i32 %i.0, !taffo.info !50
  %arrayidx9.s12_20fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx8.s12_20fixp, i32 0, i32 %k.0, !taffo.info !50
  %s12_20fixp = load i32, i32* %arrayidx9.s12_20fixp, align 4, !taffo.info !50
  %5 = lshr i32 %mul.u4_28fixp, 1, !taffo.info !102
  %6 = ashr i32 %5, 10, !taffo.info !102
  %7 = ashr i32 %s12_20fixp, 3, !taffo.info !50
  %mul10.s15_17fixp = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 17), !taffo.info !103
  %arrayidx11.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u8_24fixp, i32 %k.0, !taffo.info !47
  %arrayidx12.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx11.u8_24fixp, i32 0, i32 %j.0, !taffo.info !47
  %u8_24fixp = load i32, i32* %arrayidx12.u8_24fixp, align 4, !taffo.info !47
  %8 = lshr i32 %u8_24fixp, 7, !taffo.info !47
  %add.s15_17fixp = add i32 %8, %mul10.s15_17fixp, !taffo.info !105
  %9 = shl i32 %add.s15_17fixp, 7, !taffo.info !105
  store i32 %9, i32* %arrayidx12.u8_24fixp, align 4, !taffo.info !60
  %arrayidx13.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u3_29fixp, i32 %k.0, !taffo.info !53
  %arrayidx14.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13.u3_29fixp, i32 0, i32 %j.0, !taffo.info !53
  %u3_29fixp4 = load i32, i32* %arrayidx14.u3_29fixp, align 4, !taffo.info !53
  %arrayidx15.s12_20fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s12_20fixp, i32 %i.0, !taffo.info !50
  %arrayidx16.s12_20fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx15.s12_20fixp, i32 0, i32 %k.0, !taffo.info !50
  %s12_20fixp2 = load i32, i32* %arrayidx16.s12_20fixp, align 4, !taffo.info !50
  %10 = lshr i32 %u3_29fixp4, 1, !taffo.info !53
  %11 = ashr i32 %10, 11, !taffo.info !53
  %12 = ashr i32 %s12_20fixp2, 3, !taffo.info !50
  %mul17.s15_17fixp = call i32 @llvm.smul.fix.i32(i32 %11, i32 %12, i32 17), !taffo.info !107
  %add18.s15_17fixp = add i32 %temp2.0.s15_17fixp, %mul17.s15_17fixp, !taffo.info !107
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !108

for.end:                                          ; preds = %for.cond4
  %arrayidx19.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u8_24fixp, i32 %i.0, !taffo.info !47
  %arrayidx20.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx19.u8_24fixp, i32 0, i32 %j.0, !taffo.info !47
  %u8_24fixp1 = load i32, i32* %arrayidx20.u8_24fixp, align 4, !taffo.info !47
  %13 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %14 = lshr i32 %u8_24fixp1, 1, !taffo.info !47
  %15 = ashr i32 %13, 6, !taffo.info !45
  %16 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %14, i32 23), !taffo.info !109
  %mul21.u8_24fixp = shl i32 %16, 1, !taffo.info !112
  %arrayidx22.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u3_29fixp, i32 %i.0, !taffo.info !53
  %arrayidx23.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u3_29fixp, i32 0, i32 %j.0, !taffo.info !53
  %u3_29fixp5 = load i32, i32* %arrayidx23.u3_29fixp, align 4, !taffo.info !98
  %17 = lshr i32 %alpha.u4_28fixp, 1, !taffo.info !65
  %18 = lshr i32 %u3_29fixp5, 1, !taffo.info !98
  %19 = ashr i32 %18, 1, !taffo.info !98
  %20 = call i32 @llvm.smul.fix.i32(i32 %17, i32 %19, i32 27), !taffo.info !99
  %mul24.u4_28fixp = shl i32 %20, 1, !taffo.info !102
  %arrayidx25.s12_20fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s12_20fixp, i32 %i.0, !taffo.info !50
  %arrayidx26.s12_20fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx25.s12_20fixp, i32 0, i32 %i.0, !taffo.info !50
  %s12_20fixp3 = load i32, i32* %arrayidx26.s12_20fixp, align 4, !taffo.info !50
  %21 = lshr i32 %mul24.u4_28fixp, 1, !taffo.info !102
  %22 = ashr i32 %21, 10, !taffo.info !102
  %23 = ashr i32 %s12_20fixp3, 3, !taffo.info !50
  %mul27.s15_17fixp = call i32 @llvm.smul.fix.i32(i32 %22, i32 %23, i32 17), !taffo.info !103
  %24 = lshr i32 %mul21.u8_24fixp, 8, !taffo.info !112
  %25 = ashr i32 %mul27.s15_17fixp, 1, !taffo.info !103
  %add28.s16_16fixp = add i32 %24, %25, !taffo.info !113
  %26 = lshr i32 %alpha.u4_28fixp, 1, !taffo.info !65
  %27 = ashr i32 %26, 11, !taffo.info !65
  %28 = ashr i32 %temp2.0.s15_17fixp, 1, !taffo.info !95
  %mul29.s16_16fixp = call i32 @llvm.smul.fix.i32(i32 %27, i32 %28, i32 16), !taffo.info !116
  %add30.s16_16fixp = add i32 %add28.s16_16fixp, %mul29.s16_16fixp, !taffo.info !117
  %arrayidx31.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u8_24fixp, i32 %i.0, !taffo.info !47
  %arrayidx32.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx31.u8_24fixp, i32 0, i32 %j.0, !taffo.info !47
  %29 = shl i32 %add30.s16_16fixp, 8, !taffo.info !117
  store i32 %29, i32* %arrayidx32.u8_24fixp, align 4, !taffo.info !56
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %inc34 = add nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !119

for.end35:                                        ; preds = %for.cond1
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %inc37 = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !120

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %m, i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u8_24fixp, [10 x i32]* noundef %A.s12_20fixp, [16 x i32]* noundef %B.u3_29fixp) #0 !taffo.initweight !121 !taffo.funinfo !122 !taffo.sourceFunction !123 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !56, !taffo.constinfo !124
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !59, !taffo.constinfo !126
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !129, !taffo.initweight !130
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !131, !taffo.initweight !132
  br i1 %cmp, label %for.body, label %for.end17, !taffo.info !133, !taffo.initweight !134

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !135, !taffo.initweight !130
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !131, !taffo.initweight !132
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !137, !taffo.initweight !134

for.body5:                                        ; preds = %for.cond3
  %add = add nsw i32 %i.0, %j.0, !taffo.info !139, !taffo.initweight !132
  %rem = srem i32 %add, 100, !taffo.info !139, !taffo.initweight !134, !taffo.constinfo !21
  %conv.u5_27fixp = shl i32 %rem, 27, !taffo.info !141, !taffo.constinfo !21
  %conv6.u4_28fixp = shl i32 %m, 28, !taffo.info !143
  %0 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !141, !taffo.constinfo !21
  %1 = lshr i32 %conv6.u4_28fixp, 1, !taffo.info !143
  %2 = ashr i32 %1, 1, !taffo.info !143
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %2, i32 26), !taffo.info !144
  %div.u4_28fixp = shl i32 %3, 2, !taffo.info !147
  %arrayidx.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u8_24fixp, i32 %i.0, !taffo.info !148
  %arrayidx7.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u8_24fixp, i32 0, i32 %j.0, !taffo.info !148
  %4 = lshr i32 %div.u4_28fixp, 4, !taffo.info !147
  store i32 %4, i32* %arrayidx7.u8_24fixp, align 4, !taffo.info !149
  %add8 = add nsw i32 %n, %i.0, !taffo.info !150, !taffo.initweight !132
  %sub = sub nsw i32 %add8, %j.0, !taffo.info !139, !taffo.initweight !132
  %rem9 = srem i32 %sub, 100, !taffo.info !139, !taffo.initweight !134, !taffo.constinfo !21
  %conv10.u5_27fixp = shl i32 %rem9, 27, !taffo.info !141, !taffo.constinfo !21
  %conv11.u4_28fixp = shl i32 %m, 28, !taffo.info !143
  %5 = lshr i32 %conv10.u5_27fixp, 1, !taffo.info !141, !taffo.constinfo !21
  %6 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !143
  %7 = ashr i32 %6, 1, !taffo.info !143
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %7, i32 26), !taffo.info !144
  %div12.u4_28fixp = shl i32 %8, 2, !taffo.info !147
  %arrayidx13.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u3_29fixp, i32 %i.0, !taffo.info !152
  %arrayidx14.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13.u3_29fixp, i32 0, i32 %j.0, !taffo.info !152
  %9 = shl i32 %div12.u4_28fixp, 1, !taffo.info !147
  store i32 %9, i32* %arrayidx14.u3_29fixp, align 4, !taffo.info !149
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !153, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !155

for.end:                                          ; preds = %for.cond3
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !156, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !157

for.end17:                                        ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc46, %for.end17
  %i.1 = phi i32 [ 0, %for.end17 ], [ %inc47, %for.inc46 ], !taffo.info !129, !taffo.initweight !130
  %cmp19 = icmp slt i32 %i.1, %m, !taffo.info !131, !taffo.initweight !132
  br i1 %cmp19, label %for.body21, label %for.end48, !taffo.info !133, !taffo.initweight !134

for.body21:                                       ; preds = %for.cond18
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.body21
  %j.1 = phi i32 [ 0, %for.body21 ], [ %inc34, %for.inc33 ], !taffo.info !135, !taffo.initweight !130
  %cmp23 = icmp sle i32 %j.1, %i.1, !taffo.info !131, !taffo.initweight !132
  br i1 %cmp23, label %for.body25, label %for.end35, !taffo.info !133, !taffo.initweight !134

for.body25:                                       ; preds = %for.cond22
  %add26 = add nsw i32 %i.1, %j.1, !taffo.info !139, !taffo.initweight !132
  %rem27 = srem i32 %add26, 100, !taffo.info !139, !taffo.initweight !134, !taffo.constinfo !21
  %conv28.u5_27fixp = shl i32 %rem27, 27, !taffo.info !141, !taffo.constinfo !21
  %conv29.u4_28fixp = shl i32 %m, 28, !taffo.info !143
  %10 = lshr i32 %conv28.u5_27fixp, 1, !taffo.info !141, !taffo.constinfo !21
  %11 = lshr i32 %conv29.u4_28fixp, 1, !taffo.info !143
  %12 = ashr i32 %11, 1, !taffo.info !143
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %10, i32 %12, i32 26), !taffo.info !144
  %div30.u4_28fixp = shl i32 %13, 2, !taffo.info !147
  %arrayidx31.s12_20fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s12_20fixp, i32 %i.1, !taffo.info !158
  %arrayidx32.s12_20fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx31.s12_20fixp, i32 0, i32 %j.1, !taffo.info !158
  %14 = lshr i32 %div30.u4_28fixp, 8, !taffo.info !147
  store i32 %14, i32* %arrayidx32.s12_20fixp, align 4, !taffo.info !149
  br label %for.inc33

for.inc33:                                        ; preds = %for.body25
  %inc34 = add nsw i32 %j.1, 1, !taffo.info !153, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond22, !llvm.loop !159

for.end35:                                        ; preds = %for.cond22
  %add36 = add nsw i32 %i.1, 1, !taffo.info !156, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc43, %for.end35
  %j.2 = phi i32 [ %add36, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !135, !taffo.initweight !130
  %cmp38 = icmp slt i32 %j.2, %m, !taffo.info !131, !taffo.initweight !132
  br i1 %cmp38, label %for.body40, label %for.end45, !taffo.info !137, !taffo.initweight !134

for.body40:                                       ; preds = %for.cond37
  %arrayidx41.s12_20fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s12_20fixp, i32 %i.1, !taffo.info !158
  %arrayidx42.s12_20fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx41.s12_20fixp, i32 0, i32 %j.2, !taffo.info !158
  store i32 -1047527424, i32* %arrayidx42.s12_20fixp, align 4, !taffo.info !149, !taffo.constinfo !160
  br label %for.inc43

for.inc43:                                        ; preds = %for.body40
  %inc44 = add nsw i32 %j.2, 1, !taffo.info !153, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !163

for.end45:                                        ; preds = %for.cond37
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %inc47 = add nsw i32 %i.1, 1, !taffo.info !156, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond18, !llvm.loop !164

for.end48:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !165 !taffo.funinfo !166 !taffo.sourceFunction !167 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !83
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !85
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %0, !taffo.info !53
  %arrayidx4.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx.u3_29fixp, i32 %j.0, !taffo.info !53
  %u3_29fixp = load i32, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !98
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !168
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !98
  %2 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !168
  %3 = ashr i32 %1, 1, !taffo.info !98
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 27), !taffo.info !169
  %mul.u4_28fixp = shl i32 %4, 1, !taffo.info !171
  %5 = mul nsw i32 %i.0, %m, !taffo.info !85
  %arrayidx5.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %5, !taffo.info !53
  %arrayidx6.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx5.u3_29fixp, i32 %j.0, !taffo.info !53
  %6 = shl i32 %mul.u4_28fixp, 1, !taffo.info !171
  store i32 %6, i32* %arrayidx6.u3_29fixp, align 4, !taffo.info !63
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !172

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !173

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.s12_20fixp, i32 noundef %factor) #0 !taffo.initweight !165 !taffo.funinfo !174 !taffo.sourceFunction !167 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !83
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !85
  %arrayidx.s12_20fixp = getelementptr inbounds i32, i32* %val.s12_20fixp, i32 %0, !taffo.info !50
  %arrayidx4.s12_20fixp = getelementptr inbounds i32, i32* %arrayidx.s12_20fixp, i32 %j.0, !taffo.info !50
  %s12_20fixp = load i32, i32* %arrayidx4.s12_20fixp, align 4, !taffo.info !175
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !177
  %1 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !177
  %2 = ashr i32 %s12_20fixp, 1, !taffo.info !175
  %3 = ashr i32 %1, 10, !taffo.info !177
  %mul.s13_19fixp = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 19), !taffo.info !178
  %4 = mul nsw i32 %i.0, %m, !taffo.info !85
  %arrayidx5.s12_20fixp = getelementptr inbounds i32, i32* %val.s12_20fixp, i32 %4, !taffo.info !50
  %arrayidx6.s12_20fixp = getelementptr inbounds i32, i32* %arrayidx5.s12_20fixp, i32 %j.0, !taffo.info !50
  %5 = shl i32 %mul.s13_19fixp, 1, !taffo.info !178
  store i32 %5, i32* %arrayidx6.s12_20fixp, align 4, !taffo.info !62
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !180

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !181

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u8_24fixp, i32 noundef %factor) #0 !taffo.initweight !165 !taffo.funinfo !182 !taffo.sourceFunction !167 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !83
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !85
  %arrayidx.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %0, !taffo.info !47
  %arrayidx4.u8_24fixp = getelementptr inbounds i32, i32* %arrayidx.u8_24fixp, i32 %j.0, !taffo.info !47
  %u8_24fixp = load i32, i32* %arrayidx4.u8_24fixp, align 4, !taffo.info !183
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !177
  %1 = lshr i32 %u8_24fixp, 1, !taffo.info !183
  %2 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !177
  %3 = ashr i32 %1, 1, !taffo.info !183
  %4 = ashr i32 %2, 7, !taffo.info !177
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 22), !taffo.info !185
  %mul.u9_23fixp = shl i32 %5, 1, !taffo.info !188
  %6 = mul nsw i32 %i.0, %m, !taffo.info !85
  %arrayidx5.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %6, !taffo.info !47
  %arrayidx6.u8_24fixp = getelementptr inbounds i32, i32* %arrayidx5.u8_24fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %mul.u9_23fixp, 1, !taffo.info !188
  store i32 %7, i32* %arrayidx6.u8_24fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !189

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !190

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
!1 = !{double 0.000000e+00, double 0x4065A51EC0B56755}
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
!48 = !{!"fixp", i32 32, i32 24}
!49 = !{!"C"}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 -32, i32 20}
!52 = !{double -1.998000e+03, double 3.600000e+00}
!53 = !{!54, !55, i1 false, i2 -1}
!54 = !{!"fixp", i32 32, i32 29}
!55 = !{double 2.000000e-01, double 5.000000e+00}
!56 = !{i1 false, !44, i1 false, i2 -1}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{i1 false, i1 false, i1 false}
!59 = !{i1 false, !46, i1 false, i2 -1}
!60 = !{i1 false, !1, i1 false, i2 -1}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = !{i1 false, !52, i1 false, i2 -1}
!63 = !{i1 false, !55, i1 false, i2 -1}
!64 = !{i1 false}
!65 = !{!66, !44, i1 false, i2 -1}
!66 = !{!"fixp", i32 32, i32 28}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 1.100000e+01}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 1.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 1.870000e+02}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.870000e+02}
!75 = distinct !{!75, !23}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 1.100000e+01}
!78 = distinct !{!78, !23}
!79 = !{i1 false, i1 false, i1 false, i1 false}
!80 = !{i32 1, !16, i32 1, !81, i32 1, !0}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.600000e+01, double 1.600000e+01}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 1.000000e+00, double 1.000000e+00}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 0.000000e+00, double 0.000000e+00}
!87 = distinct !{!87, !23}
!88 = distinct !{!88, !23}
!89 = !{i32 1, i32 -1}
!90 = !{i32 1, !42, i32 1, !19}
!91 = !{void (float*, i32)* @scale_scalar}
!92 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!93 = !{i32 1, !16, i32 1, !81, i32 1, !65, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53}
!94 = distinct !{null}
!95 = !{!96, !97, i1 false, i2 1}
!96 = !{!"fixp", i32 -32, i32 17}
!97 = !{double -9.990000e+03, double 1.800000e+01}
!98 = !{!66, !55, i1 false, i2 -1}
!99 = !{!100, !101, i1 false, i2 -1}
!100 = !{!"fixp", i32 -32, i32 27}
!101 = !{double 0x3FD3333333333334, double 7.500000e+00}
!102 = !{!66, !101, i1 false, i2 -1}
!103 = !{!96, !104, i1 false, i2 -1}
!104 = !{double -1.498500e+04, double 2.700000e+01}
!105 = !{!96, !106, i1 false, i2 -1}
!106 = !{double -1.498500e+04, double 0x4069051EC0B56755}
!107 = !{!96, !97, i1 false, i2 -1}
!108 = distinct !{!108, !23}
!109 = !{!110, !111, i1 false, i2 -1}
!110 = !{!"fixp", i32 -32, i32 23}
!111 = !{double 0.000000e+00, double 0x4069F9581A7348CC}
!112 = !{!48, !111, i1 false, i2 -1}
!113 = !{!114, !115, i1 false, i2 -1}
!114 = !{!"fixp", i32 -32, i32 16}
!115 = !{double -1.498500e+04, double 0x406D59581A7348CC}
!116 = !{!114, !104, i1 false, i2 -1}
!117 = !{!114, !118, i1 false, i2 -1}
!118 = !{double -2.997000e+04, double 0x40705CAC0D39A466}
!119 = distinct !{!119, !23}
!120 = distinct !{!120, !23}
!121 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!122 = !{i32 1, !16, i32 1, !81, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53}
!123 = distinct !{null}
!124 = !{!125, i1 false}
!125 = !{i1 false, !44, i1 false, i2 0}
!126 = !{!127, i1 false}
!127 = !{i1 false, !128, i1 false, i2 0}
!128 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!129 = !{i1 false, !68, i1 false, i2 1}
!130 = !{i32 0}
!131 = !{i1 false, !70, i1 false, i2 1}
!132 = !{i32 2}
!133 = !{i1 false, !3, i1 false, i2 1}
!134 = !{i32 3}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 0.000000e+00, double 1.700000e+01}
!137 = !{i1 false, !138, i1 false, i2 1}
!138 = !{double 0.000000e+00, double 1.600000e+01}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 0.000000e+00, double 2.600000e+01}
!141 = !{!142, !140, i1 false, i2 1}
!142 = !{!"fixp", i32 32, i32 27}
!143 = !{!66, !17, i1 false, i2 1}
!144 = !{!145, !146, i1 false, i2 1}
!145 = !{!"fixp", i32 -32, i32 26}
!146 = !{double 0.000000e+00, double 2.600000e+00}
!147 = !{!66, !146, i1 false, i2 1}
!148 = !{!48, !1, i1 false, i2 1}
!149 = !{i1 false, i1 false, i1 false, i2 1}
!150 = !{i1 false, !151, i1 false, i2 1}
!151 = !{double 1.600000e+01, double 2.600000e+01}
!152 = !{!54, !55, i1 false, i2 1}
!153 = !{i1 false, !154, i1 false, i2 1}
!154 = !{double 1.000000e+00, double 1.700000e+01}
!155 = distinct !{!155, !23}
!156 = !{i1 false, !77, i1 false, i2 1}
!157 = distinct !{!157, !23}
!158 = !{!51, !52, i1 false, i2 1}
!159 = distinct !{!159, !23}
!160 = !{!161, i1 false}
!161 = !{i1 false, !162, i1 false, i2 0}
!162 = !{double -9.990000e+02, double -9.990000e+02}
!163 = distinct !{!163, !23}
!164 = distinct !{!164, !23}
!165 = !{i32 -1, i32 -1, i32 3, i32 -1}
!166 = !{i32 1, !16, i32 1, !81, i32 1, !53, i32 1, !19}
!167 = !{void (i32, i32, float*, i32)* @scale_2d}
!168 = !{!66, !20, i1 false, i2 1}
!169 = !{!100, !170, i1 false, i2 -1}
!170 = !{double 4.000000e-01, double 1.000000e+01}
!171 = !{!66, !170, i1 false, i2 -1}
!172 = distinct !{!172, !23}
!173 = distinct !{!173, !23}
!174 = !{i32 1, !16, i32 1, !16, i32 1, !50, i32 1, !19}
!175 = !{!176, !52, i1 false, i2 -1}
!176 = !{!"fixp", i32 -32, i32 19}
!177 = !{!43, !20, i1 false, i2 1}
!178 = !{!176, !179, i1 false, i2 -1}
!179 = !{double -3.996000e+03, double 7.200000e+00}
!180 = distinct !{!180, !23}
!181 = distinct !{!181, !23}
!182 = !{i32 1, !16, i32 1, !81, i32 1, !47, i32 1, !19}
!183 = !{!184, !1, i1 false, i2 -1}
!184 = !{!"fixp", i32 32, i32 23}
!185 = !{!186, !187, i1 false, i2 -1}
!186 = !{!"fixp", i32 -32, i32 22}
!187 = !{double 0.000000e+00, double 0x4075A51EC0B56755}
!188 = !{!184, !187, i1 false, i2 -1}
!189 = distinct !{!189, !23}
!190 = distinct !{!190, !23}
