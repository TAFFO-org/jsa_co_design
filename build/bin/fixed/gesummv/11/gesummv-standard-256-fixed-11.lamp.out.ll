; ModuleID = './build/bin/fixed/gesummv/11/gesummv-standard-256-fixed-11.out.ll'
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
  %A.u8_24fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !48
  %B.u8_24fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !48
  %tmp.u19_13fixp = alloca [16 x i32], align 4, !taffo.info !51
  %x.u8_24fixp = alloca [16 x i32], align 4, !taffo.info !48
  %y.u20_12fixp = alloca [16 x i32], align 4, !taffo.info !54, !taffo.target !56
  %arraydecay.u8_24fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u8_24fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay8.u8_24fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u8_24fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay9.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u8_24fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay10.u19_13fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u19_13fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay11.u20_12fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u20_12fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @init_array.7_fixp(i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u8_24fixp, [16 x i32]* %arraydecay8.u8_24fixp, i32* %arraydecay9.u8_24fixp, i32* %arraydecay10.u19_13fixp, i32* %arraydecay11.u20_12fixp), !taffo.info !57, !taffo.constinfo !58
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 256), !taffo.info !57, !taffo.constinfo !59
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 256), !taffo.info !60, !taffo.constinfo !59
  %arraydecay12.u8_24fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u8_24fixp, i32 0, i32 0, !taffo.info !48
  %u8_24fixp = bitcast [16 x i32]* %arraydecay12.u8_24fixp to i32*, !taffo.info !48
  call void @scale_2d.8_fixp(i32 16, i32 16, i32* %u8_24fixp, i32 256), !taffo.info !61, !taffo.constinfo !62
  %arraydecay13.u8_24fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u8_24fixp, i32 0, i32 0, !taffo.info !48
  %u8_24fixp2 = bitcast [16 x i32]* %arraydecay13.u8_24fixp to i32*, !taffo.info !48
  call void @scale_2d.8_fixp(i32 16, i32 16, i32* %u8_24fixp2, i32 256), !taffo.info !61, !taffo.constinfo !62
  %arraydecay14.u19_13fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u19_13fixp, i32 0, i32 0, !taffo.info !51
  call void @scale_1d.3_fixp(i32 16, i32* %arraydecay14.u19_13fixp, i32 256), !taffo.info !63, !taffo.constinfo !64
  %arraydecay15.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u8_24fixp, i32 0, i32 0, !taffo.info !48
  call void @scale_1d.4_fixp(i32 16, i32* %arraydecay15.u8_24fixp, i32 256), !taffo.info !61, !taffo.constinfo !64
  %arraydecay16.u20_12fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u20_12fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @scale_1d.6_fixp(i32 16, i32* %arraydecay16.u20_12fixp, i32 256), !taffo.info !65, !taffo.constinfo !64, !taffo.target !56
  call void @timer_start(), !taffo.constinfo !66
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !43
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !46
  %arraydecay17.u8_24fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u8_24fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay18.u8_24fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u8_24fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay19.u19_13fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u19_13fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay20.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u8_24fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay21.u20_12fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u20_12fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @kernel_gesummv.5_fixp(i32 16, i32 %u2_30fixp, i32 %u2_30fixp1, [16 x i32]* %arraydecay17.u8_24fixp, [16 x i32]* %arraydecay18.u8_24fixp, i32* %arraydecay19.u19_13fixp, i32* %arraydecay20.u8_24fixp, i32* %arraydecay21.u20_12fixp), !taffo.info !57, !taffo.constinfo !58
  call void @timer_stop(), !taffo.constinfo !66
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u20_12fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u20_12fixp, i32 0, i32 %i.0, !taffo.info !54, !taffo.target !56
  %u20_12fixp = load i32, i32* %arrayidx.u20_12fixp, align 4, !taffo.info !54, !taffo.target !56
  %0 = uitofp i32 %u20_12fixp to float, !taffo.info !54, !taffo.target !56
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -8192
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 4.096000e+03, !taffo.info !54, !taffo.target !56
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
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u19_13fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u19_13fixp = getelementptr inbounds i32, i32* %val.u19_13fixp, i32 %i.0, !taffo.info !51
  %u19_13fixp = load i32, i32* %arrayidx.u19_13fixp, align 4, !taffo.info !51
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !90
  %0 = lshr i32 %u19_13fixp, 1, !taffo.info !51
  %1 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !90
  %2 = ashr i32 %0, 8, !taffo.info !51
  %3 = ashr i32 %1, 18, !taffo.info !90
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 4), !taffo.info !92
  %mul.u27_5fixp = shl i32 %4, 1, !taffo.info !95
  %arrayidx1.u19_13fixp = getelementptr inbounds i32, i32* %val.u19_13fixp, i32 %i.0, !taffo.info !51
  %5 = shl i32 %mul.u27_5fixp, 8, !taffo.info !95
  store i32 %5, i32* %arrayidx1.u19_13fixp, align 4, !taffo.info !63
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6_fixp(i32 noundef %n, i32* noundef %val.u20_12fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !98 !taffo.sourceFunction !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u20_12fixp = getelementptr inbounds i32, i32* %val.u20_12fixp, i32 %i.0, !taffo.info !54
  %u20_12fixp = load i32, i32* %arrayidx.u20_12fixp, align 4, !taffo.info !54
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !90
  %0 = lshr i32 %u20_12fixp, 1, !taffo.info !54
  %1 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !90
  %2 = ashr i32 %0, 8, !taffo.info !54
  %3 = ashr i32 %1, 19, !taffo.info !90
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 3), !taffo.info !99
  %mul.u28_4fixp = shl i32 %4, 1, !taffo.info !102
  %arrayidx1.u20_12fixp = getelementptr inbounds i32, i32* %val.u20_12fixp, i32 %i.0, !taffo.info !54
  %5 = shl i32 %mul.u28_4fixp, 8, !taffo.info !102
  store i32 %5, i32* %arrayidx1.u20_12fixp, align 4, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !104

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.5_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u8_24fixp, [16 x i32]* noundef %B.u8_24fixp, i32* noundef %tmp.u19_13fixp, i32* noundef %x.u8_24fixp, i32* noundef %y.u20_12fixp) #0 !taffo.initweight !105 !taffo.funinfo !106 !taffo.sourceFunction !107 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx.u19_13fixp = getelementptr inbounds i32, i32* %tmp.u19_13fixp, i32 %i.0, !taffo.info !51
  store i32 0, i32* %arrayidx.u19_13fixp, align 4, !taffo.info !108, !taffo.constinfo !109
  %arrayidx1.u20_12fixp = getelementptr inbounds i32, i32* %y.u20_12fixp, i32 %i.0, !taffo.info !54
  store i32 0, i32* %arrayidx1.u20_12fixp, align 4, !taffo.info !108, !taffo.constinfo !109
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !77
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u8_24fixp, i32 %i.0, !taffo.info !48
  %arrayidx6.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx5.u8_24fixp, i32 0, i32 %j.0, !taffo.info !48
  %u8_24fixp4 = load i32, i32* %arrayidx6.u8_24fixp, align 4, !taffo.info !48
  %arrayidx7.u8_24fixp = getelementptr inbounds i32, i32* %x.u8_24fixp, i32 %j.0, !taffo.info !48
  %u8_24fixp = load i32, i32* %arrayidx7.u8_24fixp, align 4, !taffo.info !48
  %0 = lshr i32 %u8_24fixp4, 1, !taffo.info !48
  %1 = lshr i32 %u8_24fixp, 1, !taffo.info !48
  %2 = ashr i32 %0, 8, !taffo.info !48
  %3 = ashr i32 %1, 8, !taffo.info !48
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 15), !taffo.info !110
  %mul.u16_16fixp = shl i32 %4, 1, !taffo.info !113
  %arrayidx8.u19_13fixp = getelementptr inbounds i32, i32* %tmp.u19_13fixp, i32 %i.0, !taffo.info !51
  %u19_13fixp = load i32, i32* %arrayidx8.u19_13fixp, align 4, !taffo.info !51
  %5 = lshr i32 %mul.u16_16fixp, 3, !taffo.info !113
  %add.u19_13fixp = add i32 %5, %u19_13fixp, !taffo.info !115
  %arrayidx9.u19_13fixp = getelementptr inbounds i32, i32* %tmp.u19_13fixp, i32 %i.0, !taffo.info !51
  store i32 %add.u19_13fixp, i32* %arrayidx9.u19_13fixp, align 4, !taffo.info !63
  %arrayidx10.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u8_24fixp, i32 %i.0, !taffo.info !48
  %arrayidx11.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u8_24fixp, i32 0, i32 %j.0, !taffo.info !48
  %u8_24fixp5 = load i32, i32* %arrayidx11.u8_24fixp, align 4, !taffo.info !48
  %arrayidx12.u8_24fixp = getelementptr inbounds i32, i32* %x.u8_24fixp, i32 %j.0, !taffo.info !48
  %u8_24fixp2 = load i32, i32* %arrayidx12.u8_24fixp, align 4, !taffo.info !48
  %6 = lshr i32 %u8_24fixp5, 1, !taffo.info !48
  %7 = lshr i32 %u8_24fixp2, 1, !taffo.info !48
  %8 = ashr i32 %6, 8, !taffo.info !48
  %9 = ashr i32 %7, 8, !taffo.info !48
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 15), !taffo.info !110
  %mul13.u16_16fixp = shl i32 %10, 1, !taffo.info !113
  %arrayidx14.u20_12fixp = getelementptr inbounds i32, i32* %y.u20_12fixp, i32 %i.0, !taffo.info !54
  %u20_12fixp = load i32, i32* %arrayidx14.u20_12fixp, align 4, !taffo.info !54
  %11 = lshr i32 %mul13.u16_16fixp, 4, !taffo.info !113
  %add15.u20_12fixp = add i32 %11, %u20_12fixp, !taffo.info !117
  %arrayidx16.u20_12fixp = getelementptr inbounds i32, i32* %y.u20_12fixp, i32 %i.0, !taffo.info !54
  store i32 %add15.u20_12fixp, i32* %arrayidx16.u20_12fixp, align 4, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !119

for.end:                                          ; preds = %for.cond2
  %arrayidx17.u19_13fixp = getelementptr inbounds i32, i32* %tmp.u19_13fixp, i32 %i.0, !taffo.info !51
  %u19_13fixp1 = load i32, i32* %arrayidx17.u19_13fixp, align 4, !taffo.info !51
  %12 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !43
  %13 = lshr i32 %u19_13fixp1, 1, !taffo.info !51
  %14 = ashr i32 %12, 19, !taffo.info !43
  %15 = ashr i32 %13, 2, !taffo.info !51
  %16 = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 10), !taffo.info !120
  %mul18.u21_11fixp = shl i32 %16, 1, !taffo.info !123
  %arrayidx19.u20_12fixp = getelementptr inbounds i32, i32* %y.u20_12fixp, i32 %i.0, !taffo.info !54
  %u20_12fixp3 = load i32, i32* %arrayidx19.u20_12fixp, align 4, !taffo.info !54
  %17 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !46
  %18 = lshr i32 %u20_12fixp3, 1, !taffo.info !54
  %19 = ashr i32 %17, 19, !taffo.info !46
  %20 = ashr i32 %18, 1, !taffo.info !54
  %21 = call i32 @llvm.smul.fix.i32(i32 %19, i32 %20, i32 10), !taffo.info !125
  %mul20.u21_11fixp = shl i32 %21, 1, !taffo.info !127
  %add21.u21_11fixp = add i32 %mul18.u21_11fixp, %mul20.u21_11fixp, !taffo.info !128
  %arrayidx22.u20_12fixp = getelementptr inbounds i32, i32* %y.u20_12fixp, i32 %i.0, !taffo.info !54
  %22 = shl i32 %add21.u21_11fixp, 1, !taffo.info !128
  store i32 %22, i32* %arrayidx22.u20_12fixp, align 4, !taffo.info !65
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !130

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u8_24fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !131 !taffo.sourceFunction !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %i.0, !taffo.info !48
  %u8_24fixp = load i32, i32* %arrayidx.u8_24fixp, align 4, !taffo.info !48
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !90
  %0 = lshr i32 %u8_24fixp, 1, !taffo.info !48
  %1 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !90
  %2 = ashr i32 %0, 8, !taffo.info !48
  %3 = ashr i32 %1, 7, !taffo.info !90
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 15), !taffo.info !132
  %mul.u16_16fixp = shl i32 %4, 1, !taffo.info !134
  %arrayidx1.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %i.0, !taffo.info !48
  %5 = shl i32 %mul.u16_16fixp, 8, !taffo.info !134
  store i32 %5, i32* %arrayidx1.u8_24fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !135

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.7_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u8_24fixp, [16 x i32]* noundef %B.u8_24fixp, i32* noundef %x.u8_24fixp, i32* noundef %tmp.u19_13fixp, i32* noundef %y.u20_12fixp) #0 !taffo.initweight !136 !taffo.funinfo !137 !taffo.sourceFunction !138 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !57, !taffo.constinfo !139
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !60, !taffo.constinfo !141
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
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !157
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !160
  %arrayidx.u8_24fixp = getelementptr inbounds i32, i32* %x.u8_24fixp, i32 %i.0, !taffo.info !162
  %4 = lshr i32 %div.u1_31fixp, 7, !taffo.info !160
  store i32 %4, i32* %arrayidx.u8_24fixp, align 4, !taffo.info !108
  %arrayidx4.u20_12fixp = getelementptr inbounds i32, i32* %y.u20_12fixp, i32 %i.0, !taffo.info !163
  store i32 0, i32* %arrayidx4.u20_12fixp, align 4, !taffo.info !108, !taffo.constinfo !109
  %arrayidx5.u19_13fixp = getelementptr inbounds i32, i32* %tmp.u19_13fixp, i32 %i.0, !taffo.info !164
  store i32 0, i32* %arrayidx5.u19_13fixp, align 4, !taffo.info !108, !taffo.constinfo !109
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !144, !taffo.initweight !145
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.info !146, !taffo.initweight !147
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.info !148, !taffo.initweight !150

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !165, !taffo.initweight !147
  %add = add nsw i32 %mul, 1, !taffo.info !167, !taffo.initweight !150, !taffo.constinfo !21
  %rem10 = srem i32 %add, %n, !taffo.info !151, !taffo.initweight !169
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !153
  %conv12.u5_27fixp = shl i32 %n, 27, !taffo.info !155
  %5 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !153
  %6 = lshr i32 %conv12.u5_27fixp, 1, !taffo.info !155
  %7 = ashr i32 %5, 1, !taffo.info !153
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 26), !taffo.info !157
  %div13.u1_31fixp = shl i32 %8, 5, !taffo.info !160
  %arrayidx14.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u8_24fixp, i32 %i.0, !taffo.info !162
  %arrayidx15.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx14.u8_24fixp, i32 0, i32 %j.0, !taffo.info !162
  %9 = lshr i32 %div13.u1_31fixp, 7, !taffo.info !160
  store i32 %9, i32* %arrayidx15.u8_24fixp, align 4, !taffo.info !108
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.info !165, !taffo.initweight !147
  %add17 = add nsw i32 %mul16, 2, !taffo.info !170, !taffo.initweight !150, !taffo.constinfo !21
  %rem18 = srem i32 %add17, %n, !taffo.info !151, !taffo.initweight !169
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !153
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !155
  %10 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !153
  %11 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !155
  %12 = ashr i32 %10, 1, !taffo.info !153
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %11, i32 26), !taffo.info !157
  %div21.u1_31fixp = shl i32 %13, 5, !taffo.info !160
  %arrayidx22.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u8_24fixp, i32 %i.0, !taffo.info !162
  %arrayidx23.u8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u8_24fixp, i32 0, i32 %j.0, !taffo.info !162
  %14 = lshr i32 %div21.u1_31fixp, 7, !taffo.info !160
  store i32 %14, i32* %arrayidx23.u8_24fixp, align 4, !taffo.info !108
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !172, !taffo.initweight !147, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !173

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !172, !taffo.initweight !147, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !174

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u8_24fixp, i32 noundef %factor) #0 !taffo.initweight !175 !taffo.funinfo !176 !taffo.sourceFunction !177 {
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
  %arrayidx.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %0, !taffo.info !48
  %arrayidx4.u8_24fixp = getelementptr inbounds i32, i32* %arrayidx.u8_24fixp, i32 %j.0, !taffo.info !48
  %u8_24fixp = load i32, i32* %arrayidx4.u8_24fixp, align 4, !taffo.info !48
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !90
  %1 = lshr i32 %u8_24fixp, 1, !taffo.info !48
  %2 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !90
  %3 = ashr i32 %1, 8, !taffo.info !48
  %4 = ashr i32 %2, 7, !taffo.info !90
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 15), !taffo.info !132
  %mul.u16_16fixp = shl i32 %5, 1, !taffo.info !134
  %6 = mul nsw i32 %i.0, %m, !taffo.info !79
  %arrayidx5.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %6, !taffo.info !48
  %arrayidx6.u8_24fixp = getelementptr inbounds i32, i32* %arrayidx5.u8_24fixp, i32 %j.0, !taffo.info !48
  %7 = shl i32 %mul.u16_16fixp, 8, !taffo.info !134
  store i32 %7, i32* %arrayidx6.u8_24fixp, align 4, !taffo.info !61
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
!1 = !{double 0.000000e+00, double 0x4126A66680000000}
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
!49 = !{!"fixp", i32 32, i32 24}
!50 = !{double 0.000000e+00, double 2.400000e+02}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 13}
!53 = !{double 0.000000e+00, double 2.887680e+05}
!54 = !{!55, !1, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 12}
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
!85 = !{double 2.560000e+02, double 2.560000e+02}
!86 = !{void (float*, i32)* @scale_scalar}
!87 = !{i32 -1, i32 2, i32 -1}
!88 = !{i32 1, !75, i32 1, !51, i32 1, !84}
!89 = !{void (i32, float*, i32)* @scale_1d}
!90 = !{!91, !85, i1 false, i2 1}
!91 = !{!"fixp", i32 32, i32 23}
!92 = !{!93, !94, i1 false, i2 -1}
!93 = !{!"fixp", i32 -32, i32 4}
!94 = !{double 0.000000e+00, double 0x4191A00000000000}
!95 = !{!96, !94, i1 false, i2 -1}
!96 = !{!"fixp", i32 32, i32 5}
!97 = distinct !{!97, !23}
!98 = !{i32 1, !75, i32 1, !54, i32 1, !84}
!99 = !{!100, !101, i1 false, i2 -1}
!100 = !{!"fixp", i32 -32, i32 3}
!101 = !{double 0.000000e+00, double 0x41A6A66680000000}
!102 = !{!103, !101, i1 false, i2 -1}
!103 = !{!"fixp", i32 32, i32 4}
!104 = distinct !{!104, !23}
!105 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!106 = !{i32 1, !75, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !51, i32 1, !48, i32 1, !54}
!107 = distinct !{null}
!108 = !{i1 false, i1 false, i1 false, i2 1}
!109 = !{!79, i1 false}
!110 = !{!111, !112, i1 false, i2 -1}
!111 = !{!"fixp", i32 -32, i32 15}
!112 = !{double 0.000000e+00, double 5.760000e+04}
!113 = !{!114, !112, i1 false, i2 -1}
!114 = !{!"fixp", i32 32, i32 16}
!115 = !{!52, !116, i1 false, i2 -1}
!116 = !{double 0.000000e+00, double 3.463680e+05}
!117 = !{!55, !118, i1 false, i2 -1}
!118 = !{double 0.000000e+00, double 0x4128686680000000}
!119 = distinct !{!119, !23}
!120 = !{!121, !122, i1 false, i2 -1}
!121 = !{!"fixp", i32 -32, i32 10}
!122 = !{double 0.000000e+00, double 4.331520e+05}
!123 = !{!124, !122, i1 false, i2 -1}
!124 = !{!"fixp", i32 32, i32 11}
!125 = !{!121, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 0x412B2E1499999999}
!127 = !{!124, !126, i1 false, i2 -1}
!128 = !{!124, !129, i1 false, i2 -1}
!129 = !{double 0.000000e+00, double 0x4134330A4CCCCCCC}
!130 = distinct !{!130, !23}
!131 = !{i32 1, !75, i32 1, !48, i32 1, !84}
!132 = !{!111, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 6.144000e+04}
!134 = !{!114, !133, i1 false, i2 -1}
!135 = distinct !{!135, !23}
!136 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!137 = !{i32 1, !75, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !48, i32 1, !51, i32 1, !54}
!138 = distinct !{null}
!139 = !{!140, i1 false}
!140 = !{i1 false, !45, i1 false, i2 0}
!141 = !{!142, i1 false}
!142 = !{i1 false, !143, i1 false, i2 0}
!143 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!144 = !{i1 false, !68, i1 false, i2 1}
!145 = !{i32 0}
!146 = !{i1 false, !70, i1 false, i2 1}
!147 = !{i32 2}
!148 = !{i1 false, !149, i1 false, i2 1}
!149 = !{double 0.000000e+00, double 1.600000e+01}
!150 = !{i32 3}
!151 = !{i1 false, !152, i1 false, i2 1}
!152 = !{double 0.000000e+00, double 1.500000e+01}
!153 = !{!154, !152, i1 false, i2 1}
!154 = !{!"fixp", i32 32, i32 28}
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
