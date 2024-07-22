; ModuleID = './build/bin/fixed/gemver/24/gemver-standard-256-fixed-24.out.ll.4.taffotmp.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@w_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !2
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !4
@stderr = external global %struct._IO_FILE*, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !6
@.str.15 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !8

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !17 !taffo.funinfo !18 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !19
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %div, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul = fmul float %x.0, %x.0
  %sub = fsub float %val, %mul
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !22
  %div4 = fdiv float %sub, %mul3
  %add = fadd float %x.0, %div4
  %mul5 = fmul float %add, %add
  %sub6 = fsub float %val, %mul5
  %cmp7 = fcmp oge float %sub6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %sub6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub6, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %add, %if.end ]
  %flag.2 = phi i32 [ %flag.0, %for.body ], [ %flag.1, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !28 !taffo.funinfo !29 !taffo.equivalentChild !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.equivalentChild !33 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %0, %conv
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %mul, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !35 !taffo.funinfo !36 !taffo.equivalentChild !37 {
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
  %conv = sitofp i32 %factor to float
  %mul = fmul float %1, %conv
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %mul, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !38

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !39

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !40 !taffo.funinfo !41 {
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
  %conv = sitofp i32 %factor to float
  %mul = fmul float %3, %conv
  %4 = mul nuw i32 %m, %p
  %5 = mul nsw i32 %i.0, %4
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5
  %6 = mul nsw i32 %j.0, %p
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0
  store float %mul, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !25
  br label %for.cond4, !llvm.loop !42

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !43

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !44

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !45 !taffo.funinfo !45 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !45 !taffo.funinfo !45 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !28 !taffo.funinfo !29 !taffo.start !46 {
entry:
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !47
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !50
  %A.u15_17fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !52
  %u1.u8_24fixp = alloca [20 x i32], align 4, !taffo.info !54
  %v1.u7_25fixp = alloca [20 x i32], align 4, !taffo.info !57
  %u2.u8_24fixp = alloca [20 x i32], align 4, !taffo.info !60
  %v2.u6_26fixp = alloca [20 x i32], align 4, !taffo.info !62
  %w = alloca [20 x float], align 4, !taffo.info !65, !taffo.initweight !67, !taffo.target !68
  %x.u23_9fixp = alloca [20 x i32], align 4, !taffo.info !69
  %y.u6_26fixp = alloca [20 x i32], align 4, !taffo.info !71
  %z.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !73
  %arraydecay.u15_17fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u15_17fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay12.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u8_24fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay13.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u7_25fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay14.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u8_24fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay15.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u6_26fixp, i32 0, i32 0, !taffo.info !62
  %arraydecay16.flt.1flp = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !65, !taffo.initweight !76, !taffo.target !68
  %arraydecay17.u23_9fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u23_9fixp, i32 0, i32 0, !taffo.info !69
  %arraydecay18.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u6_26fixp, i32 0, i32 0, !taffo.info !71
  %arraydecay19.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u5_27fixp, i32 0, i32 0, !taffo.info !73
  call void @init_array.12_fixp(i32 20, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [20 x i32]* %arraydecay.u15_17fixp, i32* %arraydecay12.u8_24fixp, i32* %arraydecay13.u7_25fixp, i32* %arraydecay14.u8_24fixp, i32* %arraydecay15.u6_26fixp, float* %arraydecay16.flt.1flp, i32* %arraydecay17.u23_9fixp, i32* %arraydecay18.u6_26fixp, i32* %arraydecay19.u5_27fixp), !taffo.info !77, !taffo.constinfo !78
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 256), !taffo.info !77, !taffo.constinfo !79
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 256), !taffo.info !80, !taffo.constinfo !79
  %arraydecay20.u15_17fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u15_17fixp, i32 0, i32 0, !taffo.info !52
  %u15_17fixp = bitcast [20 x i32]* %arraydecay20.u15_17fixp to i32*, !taffo.info !52
  call void @scale_2d.13_fixp(i32 20, i32 20, i32* %u15_17fixp, i32 256), !taffo.info !81, !taffo.constinfo !82
  %arraydecay21.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u8_24fixp, i32 0, i32 0, !taffo.info !54
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay21.u8_24fixp, i32 256), !taffo.info !83, !taffo.constinfo !84
  %arraydecay22.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u7_25fixp, i32 0, i32 0, !taffo.info !57
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay22.u7_25fixp, i32 256), !taffo.info !85, !taffo.constinfo !84
  %arraydecay23.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u8_24fixp, i32 0, i32 0, !taffo.info !60
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay23.u8_24fixp, i32 256), !taffo.info !86, !taffo.constinfo !84
  %arraydecay24.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u6_26fixp, i32 0, i32 0, !taffo.info !62
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay24.u6_26fixp, i32 256), !taffo.info !87, !taffo.constinfo !84
  %arraydecay25.flt.1flp = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !65, !taffo.initweight !76, !taffo.target !68
  call void @scale_1d.7_fixp(i32 20, float* %arraydecay25.flt.1flp, i32 256), !taffo.info !88, !taffo.constinfo !84, !taffo.target !68
  %arraydecay26.u23_9fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u23_9fixp, i32 0, i32 0, !taffo.info !69
  call void @scale_1d.8_fixp(i32 20, i32* %arraydecay26.u23_9fixp, i32 256), !taffo.info !89, !taffo.constinfo !84
  %arraydecay27.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u6_26fixp, i32 0, i32 0, !taffo.info !71
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay27.u6_26fixp, i32 256), !taffo.info !90, !taffo.constinfo !84
  %arraydecay28.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u5_27fixp, i32 0, i32 0, !taffo.info !73
  call void @scale_1d.11_fixp(i32 20, i32* %arraydecay28.u5_27fixp, i32 256), !taffo.info !91, !taffo.constinfo !84
  call void @timer_start(), !taffo.constinfo !92
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !47
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !50
  %arraydecay29.u15_17fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u15_17fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay30.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u8_24fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay31.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u7_25fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay32.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u8_24fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay33.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u6_26fixp, i32 0, i32 0, !taffo.info !62
  %arraydecay34.flt.1flp = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !65, !taffo.initweight !76, !taffo.target !68
  %arraydecay35.u23_9fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u23_9fixp, i32 0, i32 0, !taffo.info !69
  %arraydecay36.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u6_26fixp, i32 0, i32 0, !taffo.info !71
  %arraydecay37.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u5_27fixp, i32 0, i32 0, !taffo.info !73
  call void @kernel_gemver.10_fixp(i32 20, i32 %u2_30fixp, i32 %u2_30fixp1, [20 x i32]* %arraydecay29.u15_17fixp, i32* %arraydecay30.u8_24fixp, i32* %arraydecay31.u7_25fixp, i32* %arraydecay32.u8_24fixp, i32* %arraydecay33.u6_26fixp, float* %arraydecay34.flt.1flp, i32* %arraydecay35.u23_9fixp, i32* %arraydecay36.u6_26fixp, i32* %arraydecay37.u5_27fixp), !taffo.info !77, !taffo.constinfo !78
  call void @timer_stop(), !taffo.constinfo !92
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc49, %for.inc48 ], !taffo.info !93
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !95
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %arrayidx.u23_9fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u23_9fixp, i32 0, i32 %i.0, !taffo.info !69
  %u23_9fixp = load i32, i32* %arrayidx.u23_9fixp, align 4, !taffo.info !69
  %0 = uitofp i32 %u23_9fixp to float, !taffo.info !69
  %1 = fdiv float %0, 5.120000e+02, !taffo.info !69
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx38, align 4, !taffo.info !89
  %arrayidx39.flt.1flp = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 %i.0, !taffo.info !65, !taffo.initweight !76, !taffo.target !68
  %.flt.fallback.1flp = load float, float* %arrayidx39.flt.1flp, align 4, !taffo.info !65, !taffo.initweight !97, !taffo.target !68
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !2
  store float %.flt.fallback.1flp, float* %arrayidx40, align 4, !taffo.info !88, !taffo.target !68
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !98
  %cmp42 = icmp slt i32 %j.0, 20, !taffo.info !95
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %arrayidx44.u15_17fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u15_17fixp, i32 0, i32 %i.0, !taffo.info !52
  %arrayidx45.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx44.u15_17fixp, i32 0, i32 %j.0, !taffo.info !52
  %u15_17fixp2 = load i32, i32* %arrayidx45.u15_17fixp, align 4, !taffo.info !52
  %2 = uitofp i32 %u15_17fixp2 to float, !taffo.info !52
  %3 = fdiv float %2, 1.310720e+05, !taffo.info !52
  %arrayidx46 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i32 0, i32 %j.0, !taffo.info !4
  store float %3, float* %arrayidx47, align 4, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %inc = add nsw i32 %j.0, 1, !taffo.info !100, !taffo.constinfo !25
  br label %for.cond41, !llvm.loop !102

for.end:                                          ; preds = %for.cond41
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %inc49 = add nsw i32 %i.0, 1, !taffo.info !103, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !105

for.end50:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !82
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !35 !taffo.funinfo !106 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !109
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !95
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !109
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !111
  %add = add nsw i32 %mul, %j.0, !taffo.info !111
  %rem = srem i32 %add, 20, !taffo.info !111, !taffo.constinfo !25
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !109
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !79
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !4
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !4
  %conv = fpext float %2 to double, !taffo.info !4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv), !taffo.constinfo !84
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !113

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !114

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !95
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !109
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !111, !taffo.constinfo !25
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !109
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !79
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !0
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !0
  %conv21 = fpext float %5 to double, !taffo.info !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv21), !taffo.constinfo !84
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond10, !llvm.loop !115

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !95
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !109
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !111, !taffo.constinfo !25
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !109
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !79
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !2
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !2
  %conv37 = fpext float %8 to double, !taffo.info !2
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv37), !taffo.constinfo !84
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond26, !llvm.loop !116

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !28 !taffo.funinfo !29 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !117 !taffo.funinfo !118 !taffo.sourceFunction !121 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u7_25fixp, i32 noundef %factor) #0 !taffo.initweight !122 !taffo.funinfo !123 !taffo.sourceFunction !124 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !109
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %i.0, !taffo.info !57
  %u7_25fixp = load i32, i32* %arrayidx.u7_25fixp, align 4, !taffo.info !57
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !125
  %0 = lshr i32 %u7_25fixp, 1, !taffo.info !57
  %1 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !125
  %2 = ashr i32 %0, 8, !taffo.info !57
  %3 = ashr i32 %1, 6, !taffo.info !125
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 16), !taffo.info !127
  %mul.u15_17fixp = shl i32 %4, 1, !taffo.info !130
  %arrayidx1.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %i.0, !taffo.info !57
  %5 = shl i32 %mul.u15_17fixp, 8, !taffo.info !130
  store i32 %5, i32* %arrayidx1.u7_25fixp, align 4, !taffo.info !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u8_24fixp, i32 noundef %factor) #0 !taffo.initweight !122 !taffo.funinfo !132 !taffo.sourceFunction !124 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !109
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %i.0, !taffo.info !54
  %u8_24fixp = load i32, i32* %arrayidx.u8_24fixp, align 4, !taffo.info !54
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !125
  %0 = lshr i32 %u8_24fixp, 1, !taffo.info !54
  %1 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !125
  %2 = ashr i32 %0, 8, !taffo.info !54
  %3 = ashr i32 %1, 7, !taffo.info !125
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 15), !taffo.info !133
  %mul.u16_16fixp = shl i32 %4, 1, !taffo.info !136
  %arrayidx1.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %i.0, !taffo.info !54
  %5 = shl i32 %mul.u16_16fixp, 8, !taffo.info !136
  store i32 %5, i32* %arrayidx1.u8_24fixp, align 4, !taffo.info !83
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !138

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8_fixp(i32 noundef %n, i32* noundef %val.u23_9fixp, i32 noundef %factor) #0 !taffo.initweight !122 !taffo.funinfo !139 !taffo.sourceFunction !124 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !109
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u23_9fixp = getelementptr inbounds i32, i32* %val.u23_9fixp, i32 %i.0, !taffo.info !69
  %u23_9fixp = load i32, i32* %arrayidx.u23_9fixp, align 4, !taffo.info !69
  %0 = uitofp i32 %u23_9fixp to float, !taffo.info !69
  %1 = fdiv float %0, 5.120000e+02, !taffo.info !69
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !125
  %2 = uitofp i32 %conv.u9_23fixp to float, !taffo.info !125
  %3 = fdiv float %2, 0x4160000000000000, !taffo.info !125
  %mul.1flp = fmul float %1, %3, !taffo.info !140
  %arrayidx1.u23_9fixp = getelementptr inbounds i32, i32* %val.u23_9fixp, i32 %i.0, !taffo.info !69
  %4 = fmul float 5.120000e+02, %mul.1flp, !taffo.info !140
  %5 = fptoui float %4 to i32, !taffo.info !140
  store i32 %5, i32* %arrayidx1.u23_9fixp, align 4, !taffo.info !89
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !143

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6_fixp(i32 noundef %n, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !122 !taffo.funinfo !144 !taffo.sourceFunction !124 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !109
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !62
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !62
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !125
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !62
  %1 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !125
  %2 = ashr i32 %0, 8, !taffo.info !62
  %3 = ashr i32 %1, 5, !taffo.info !125
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 17), !taffo.info !145
  %mul.u14_18fixp = shl i32 %4, 1, !taffo.info !148
  %arrayidx1.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !62
  %5 = shl i32 %mul.u14_18fixp, 8, !taffo.info !148
  store i32 %5, i32* %arrayidx1.u6_26fixp, align 4, !taffo.info !87
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.11_fixp(i32 noundef %n, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !122 !taffo.funinfo !151 !taffo.sourceFunction !124 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !109
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !73
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !73
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !125
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !73
  %1 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !125
  %2 = ashr i32 %0, 8, !taffo.info !73
  %3 = ashr i32 %1, 4, !taffo.info !125
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 18), !taffo.info !152
  %mul.u13_19fixp = shl i32 %4, 1, !taffo.info !155
  %arrayidx1.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !73
  %5 = shl i32 %mul.u13_19fixp, 8, !taffo.info !155
  store i32 %5, i32* %arrayidx1.u5_27fixp, align 4, !taffo.info !91
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !157

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.10_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u15_17fixp, i32* noundef %u1.u8_24fixp, i32* noundef %v1.u7_25fixp, i32* noundef %u2.u8_24fixp, i32* noundef %v2.u6_26fixp, float* noundef %w, i32* noundef %x.u23_9fixp, i32* noundef %y.u6_26fixp, i32* noundef %z.u5_27fixp) #0 !taffo.initweight !158 !taffo.funinfo !159 !taffo.sourceFunction !160 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !109
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !95
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !109
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u15_17fixp, i32 %i.0, !taffo.info !52
  %arrayidx4.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u15_17fixp, i32 0, i32 %j.0, !taffo.info !52
  %u15_17fixp = load i32, i32* %arrayidx4.u15_17fixp, align 4, !taffo.info !161
  %arrayidx5.u8_24fixp = getelementptr inbounds i32, i32* %u1.u8_24fixp, i32 %i.0, !taffo.info !54
  %u8_24fixp = load i32, i32* %arrayidx5.u8_24fixp, align 4, !taffo.info !54
  %arrayidx6.u7_25fixp = getelementptr inbounds i32, i32* %v1.u7_25fixp, i32 %j.0, !taffo.info !57
  %u7_25fixp = load i32, i32* %arrayidx6.u7_25fixp, align 4, !taffo.info !57
  %0 = lshr i32 %u8_24fixp, 1, !taffo.info !54
  %1 = lshr i32 %u7_25fixp, 1, !taffo.info !57
  %2 = ashr i32 %0, 8, !taffo.info !54
  %3 = ashr i32 %1, 9, !taffo.info !57
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 15), !taffo.info !162
  %mul.u16_16fixp = shl i32 %4, 1, !taffo.info !164
  %5 = lshr i32 %u15_17fixp, 1, !taffo.info !161
  %add.u16_16fixp = add i32 %5, %mul.u16_16fixp, !taffo.info !165
  %arrayidx7.u8_24fixp = getelementptr inbounds i32, i32* %u2.u8_24fixp, i32 %i.0, !taffo.info !60
  %u8_24fixp1 = load i32, i32* %arrayidx7.u8_24fixp, align 4, !taffo.info !60
  %arrayidx8.u6_26fixp = getelementptr inbounds i32, i32* %v2.u6_26fixp, i32 %j.0, !taffo.info !62
  %u6_26fixp = load i32, i32* %arrayidx8.u6_26fixp, align 4, !taffo.info !62
  %6 = lshr i32 %u8_24fixp1, 1, !taffo.info !60
  %7 = lshr i32 %u6_26fixp, 1, !taffo.info !62
  %8 = ashr i32 %6, 5, !taffo.info !60
  %9 = ashr i32 %7, 7, !taffo.info !62
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 18), !taffo.info !167
  %mul9.u13_19fixp = shl i32 %10, 1, !taffo.info !169
  %11 = lshr i32 %mul9.u13_19fixp, 3, !taffo.info !169
  %add10.u16_16fixp = add i32 %add.u16_16fixp, %11, !taffo.info !170
  %arrayidx11.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u15_17fixp, i32 %i.0, !taffo.info !52
  %arrayidx12.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u15_17fixp, i32 0, i32 %j.0, !taffo.info !52
  %12 = shl i32 %add10.u16_16fixp, 1, !taffo.info !170
  store i32 %12, i32* %arrayidx12.u15_17fixp, align 4, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !172

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !173

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !95
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !109
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !95
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !109
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22.u23_9fixp = getelementptr inbounds i32, i32* %x.u23_9fixp, i32 %i.1, !taffo.info !69
  %u23_9fixp = load i32, i32* %arrayidx22.u23_9fixp, align 4, !taffo.info !69
  %arrayidx23.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u15_17fixp, i32 %j.1, !taffo.info !52
  %arrayidx24.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u15_17fixp, i32 0, i32 %i.1, !taffo.info !52
  %u15_17fixp5 = load i32, i32* %arrayidx24.u15_17fixp, align 4, !taffo.info !52
  %13 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !50
  %14 = lshr i32 %u15_17fixp5, 1, !taffo.info !52
  %15 = ashr i32 %13, 13, !taffo.info !50
  %16 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %14, i32 16), !taffo.info !174
  %mul25.u15_17fixp = shl i32 %16, 1, !taffo.info !176
  %arrayidx26.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %j.1, !taffo.info !71
  %u6_26fixp4 = load i32, i32* %arrayidx26.u6_26fixp, align 4, !taffo.info !71
  %17 = lshr i32 %mul25.u15_17fixp, 1, !taffo.info !176
  %18 = lshr i32 %u6_26fixp4, 1, !taffo.info !71
  %19 = ashr i32 %17, 5, !taffo.info !176
  %20 = ashr i32 %18, 14, !taffo.info !71
  %21 = call i32 @llvm.smul.fix.i32(i32 %19, i32 %20, i32 11), !taffo.info !177
  %mul27.u20_12fixp = shl i32 %21, 1, !taffo.info !180
  %22 = lshr i32 %mul27.u20_12fixp, 3, !taffo.info !180
  %add28.u23_9fixp = add i32 %u23_9fixp, %22, !taffo.info !182
  %arrayidx29.u23_9fixp = getelementptr inbounds i32, i32* %x.u23_9fixp, i32 %i.1, !taffo.info !69
  store i32 %add28.u23_9fixp, i32* %arrayidx29.u23_9fixp, align 4, !taffo.info !89
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond19, !llvm.loop !184

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond16, !llvm.loop !185

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !95
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !109
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39.u23_9fixp = getelementptr inbounds i32, i32* %x.u23_9fixp, i32 %i.2, !taffo.info !69
  %u23_9fixp2 = load i32, i32* %arrayidx39.u23_9fixp, align 4, !taffo.info !69
  %arrayidx40.u5_27fixp = getelementptr inbounds i32, i32* %z.u5_27fixp, i32 %i.2, !taffo.info !73
  %u5_27fixp = load i32, i32* %arrayidx40.u5_27fixp, align 4, !taffo.info !73
  %23 = lshr i32 %u5_27fixp, 18, !taffo.info !73
  %add41.u23_9fixp = add i32 %u23_9fixp2, %23, !taffo.info !186
  %arrayidx42.u23_9fixp = getelementptr inbounds i32, i32* %x.u23_9fixp, i32 %i.2, !taffo.info !69
  store i32 %add41.u23_9fixp, i32* %arrayidx42.u23_9fixp, align 4, !taffo.info !89
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond36, !llvm.loop !188

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !95
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !109
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !95
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !109
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52.flt.1flp = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.info !65, !taffo.initweight !189
  %.flt.fallback.1flp = load float, float* %arrayidx52.flt.1flp, align 4, !taffo.info !65, !taffo.initweight !190
  %arrayidx53.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u15_17fixp, i32 %i.3, !taffo.info !52
  %arrayidx54.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx53.u15_17fixp, i32 0, i32 %j.2, !taffo.info !52
  %u15_17fixp6 = load i32, i32* %arrayidx54.u15_17fixp, align 4, !taffo.info !52
  %24 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !47
  %25 = lshr i32 %u15_17fixp6, 1, !taffo.info !52
  %26 = ashr i32 %24, 13, !taffo.info !47
  %27 = call i32 @llvm.smul.fix.i32(i32 %26, i32 %25, i32 16), !taffo.info !191
  %mul55.u15_17fixp = shl i32 %27, 1, !taffo.info !193
  %28 = uitofp i32 %mul55.u15_17fixp to float, !taffo.info !193
  %29 = fdiv float %28, 1.310720e+05, !taffo.info !193
  %arrayidx56.u23_9fixp = getelementptr inbounds i32, i32* %x.u23_9fixp, i32 %j.2, !taffo.info !69
  %u23_9fixp3 = load i32, i32* %arrayidx56.u23_9fixp, align 4, !taffo.info !69
  %30 = uitofp i32 %u23_9fixp3 to float, !taffo.info !69
  %31 = fdiv float %30, 5.120000e+02, !taffo.info !69
  %mul57.1flp = fmul float %29, %31, !taffo.info !194
  %add58.1flp = fadd float %.flt.fallback.1flp, %mul57.1flp, !taffo.info !197
  %arrayidx59.flt.1flp = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.info !65, !taffo.initweight !189
  store float %add58.1flp, float* %arrayidx59.flt.1flp, align 4, !taffo.info !88
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond49, !llvm.loop !200

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond46, !llvm.loop !201

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7_fixp(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !122 !taffo.funinfo !202 !taffo.sourceFunction !124 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !109
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.flt.1flp = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !65, !taffo.initweight !189
  %.flt.fallback.1flp = load float, float* %arrayidx.flt.1flp, align 4, !taffo.info !65, !taffo.initweight !190
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !125
  %0 = uitofp i32 %conv.u9_23fixp to float, !taffo.info !125
  %1 = fdiv float %0, 0x4160000000000000, !taffo.info !125
  %mul.1flp = fmul float %.flt.fallback.1flp, %1, !taffo.info !203
  %arrayidx1.flt.1flp = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !65, !taffo.initweight !189
  store float %mul.1flp, float* %arrayidx1.flt.1flp, align 4, !taffo.info !88
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !206

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u15_17fixp, i32* noundef %u1.u8_24fixp, i32* noundef %v1.u7_25fixp, i32* noundef %u2.u8_24fixp, i32* noundef %v2.u6_26fixp, float* noundef %w, i32* noundef %x.u23_9fixp, i32* noundef %y.u6_26fixp, i32* noundef %z.u5_27fixp) #0 !taffo.initweight !207 !taffo.funinfo !159 !taffo.sourceFunction !208 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !77, !taffo.constinfo !209
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !80, !taffo.constinfo !211
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !214
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.info !215, !taffo.initweight !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !217, !taffo.initweight !97
  br i1 %cmp, label %for.body, label %for.end53, !taffo.info !215, !taffo.initweight !218

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !219
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !219
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !214
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !220
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !222
  %arrayidx.u8_24fixp = getelementptr inbounds i32, i32* %u1.u8_24fixp, i32 %i.0, !taffo.info !224
  %3 = lshr i32 %div.u1_31fixp, 7, !taffo.info !222
  store i32 %3, i32* %arrayidx.u8_24fixp, align 4, !taffo.info !225
  %add = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !97, !taffo.constinfo !25
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !227, !taffo.constinfo !25
  %4 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !227, !taffo.constinfo !25
  %5 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !214
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !228
  %div7.u2_30fixp = shl i32 %6, 4, !taffo.info !230
  %7 = lshr i32 %div7.u2_30fixp, 1, !taffo.info !230
  %8 = shl i32 2, 29
  %9 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %8, i32 29), !taffo.info !231
  %div9.u2_30fixp = shl i32 %9, 1, !taffo.info !234, !taffo.constinfo !235
  %conv10.u1_31fixp = shl i32 %div9.u2_30fixp, 1, !taffo.info !236, !taffo.constinfo !235
  %arrayidx11.u8_24fixp = getelementptr inbounds i32, i32* %u2.u8_24fixp, i32 %i.0, !taffo.info !238
  %10 = lshr i32 %conv10.u1_31fixp, 7, !taffo.info !236, !taffo.constinfo !235
  store i32 %10, i32* %arrayidx11.u8_24fixp, align 4, !taffo.info !225
  %add12 = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !97, !taffo.constinfo !25
  %conv13.u5_27fixp = shl i32 %add12, 27, !taffo.info !227, !taffo.constinfo !25
  %11 = lshr i32 %conv13.u5_27fixp, 1, !taffo.info !227, !taffo.constinfo !25
  %12 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !214
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %11, i32 %12, i32 26), !taffo.info !228
  %div14.u2_30fixp = shl i32 %13, 4, !taffo.info !230
  %14 = lshr i32 %div14.u2_30fixp, 1, !taffo.info !230
  %15 = shl i32 4, 28
  %16 = ashr i32 %14, 1, !taffo.info !230
  %17 = call i32 @llvm.sdiv.fix.i32(i32 %16, i32 %15, i32 28), !taffo.info !239
  %div16.u2_30fixp = shl i32 %17, 2, !taffo.info !242, !taffo.constinfo !243
  %conv17.u1_31fixp = shl i32 %div16.u2_30fixp, 1, !taffo.info !246, !taffo.constinfo !243
  %arrayidx18.u7_25fixp = getelementptr inbounds i32, i32* %v1.u7_25fixp, i32 %i.0, !taffo.info !248
  %18 = lshr i32 %conv17.u1_31fixp, 6, !taffo.info !246, !taffo.constinfo !243
  store i32 %18, i32* %arrayidx18.u7_25fixp, align 4, !taffo.info !225
  %add19 = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !97, !taffo.constinfo !25
  %conv20.u5_27fixp = shl i32 %add19, 27, !taffo.info !227, !taffo.constinfo !25
  %19 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !227, !taffo.constinfo !25
  %20 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !214
  %21 = call i32 @llvm.sdiv.fix.i32(i32 %19, i32 %20, i32 26), !taffo.info !228
  %div21.u2_30fixp = shl i32 %21, 4, !taffo.info !230
  %22 = lshr i32 %div21.u2_30fixp, 1, !taffo.info !230
  %23 = shl i32 6, 28
  %24 = ashr i32 %22, 1, !taffo.info !230
  %25 = call i32 @llvm.sdiv.fix.i32(i32 %24, i32 %23, i32 28), !taffo.info !249
  %div23.u2_30fixp = shl i32 %25, 2, !taffo.info !251, !taffo.constinfo !252
  %conv24.u1_31fixp = shl i32 %div23.u2_30fixp, 1, !taffo.info !255, !taffo.constinfo !252
  %arrayidx25.u6_26fixp = getelementptr inbounds i32, i32* %v2.u6_26fixp, i32 %i.0, !taffo.info !257
  %26 = lshr i32 %conv24.u1_31fixp, 5, !taffo.info !255, !taffo.constinfo !252
  store i32 %26, i32* %arrayidx25.u6_26fixp, align 4, !taffo.info !225
  %add26 = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !97, !taffo.constinfo !25
  %conv27.u5_27fixp = shl i32 %add26, 27, !taffo.info !227, !taffo.constinfo !25
  %27 = lshr i32 %conv27.u5_27fixp, 1, !taffo.info !227, !taffo.constinfo !25
  %28 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !214
  %29 = call i32 @llvm.sdiv.fix.i32(i32 %27, i32 %28, i32 26), !taffo.info !228
  %div28.u2_30fixp = shl i32 %29, 4, !taffo.info !230
  %30 = lshr i32 %div28.u2_30fixp, 1, !taffo.info !230
  %31 = shl i32 8, 27
  %32 = ashr i32 %30, 2, !taffo.info !230
  %33 = call i32 @llvm.sdiv.fix.i32(i32 %32, i32 %31, i32 27), !taffo.info !258
  %div30.u2_30fixp = shl i32 %33, 3, !taffo.info !261, !taffo.constinfo !262
  %conv31.u1_31fixp = shl i32 %div30.u2_30fixp, 1, !taffo.info !265, !taffo.constinfo !262
  %arrayidx32.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !267
  %34 = lshr i32 %conv31.u1_31fixp, 5, !taffo.info !265, !taffo.constinfo !262
  store i32 %34, i32* %arrayidx32.u6_26fixp, align 4, !taffo.info !225
  %add33 = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !97, !taffo.constinfo !25
  %conv34.u5_27fixp = shl i32 %add33, 27, !taffo.info !227, !taffo.constinfo !25
  %35 = lshr i32 %conv34.u5_27fixp, 1, !taffo.info !227, !taffo.constinfo !25
  %36 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !214
  %37 = call i32 @llvm.sdiv.fix.i32(i32 %35, i32 %36, i32 26), !taffo.info !228
  %div35.u2_30fixp = shl i32 %37, 4, !taffo.info !230
  %38 = lshr i32 %div35.u2_30fixp, 1, !taffo.info !230
  %39 = shl i32 9, 27
  %40 = ashr i32 %38, 2, !taffo.info !230
  %41 = call i32 @llvm.sdiv.fix.i32(i32 %40, i32 %39, i32 27), !taffo.info !268
  %div37.u2_30fixp = shl i32 %41, 3, !taffo.info !270, !taffo.constinfo !271
  %conv38.u1_31fixp = shl i32 %div37.u2_30fixp, 1, !taffo.info !274, !taffo.constinfo !271
  %arrayidx39.u5_27fixp = getelementptr inbounds i32, i32* %z.u5_27fixp, i32 %i.0, !taffo.info !276
  %42 = lshr i32 %conv38.u1_31fixp, 4, !taffo.info !274, !taffo.constinfo !271
  store i32 %42, i32* %arrayidx39.u5_27fixp, align 4, !taffo.info !225
  %arrayidx40.u23_9fixp = getelementptr inbounds i32, i32* %x.u23_9fixp, i32 %i.0, !taffo.info !277
  store i32 0, i32* %arrayidx40.u23_9fixp, align 4, !taffo.info !225, !taffo.constinfo !278
  %arrayidx41.flt.1flp = getelementptr inbounds float, float* %w, i32 %i.0, !taffo.info !279, !taffo.initweight !97
  store float 0.000000e+00, float* %arrayidx41.flt.1flp, align 4, !taffo.info !225, !taffo.constinfo !278
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !215, !taffo.initweight !67
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.info !217, !taffo.initweight !97
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.info !215, !taffo.initweight !218

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !280, !taffo.initweight !97
  %rem = srem i32 %mul, %n, !taffo.info !282, !taffo.initweight !218
  %conv46.u5_27fixp = shl i32 %rem, 27, !taffo.info !284
  %conv47.u5_27fixp = shl i32 %n, 27, !taffo.info !214
  %43 = lshr i32 %conv46.u5_27fixp, 1, !taffo.info !284
  %44 = lshr i32 %conv47.u5_27fixp, 1, !taffo.info !214
  %45 = call i32 @llvm.sdiv.fix.i32(i32 %43, i32 %44, i32 26), !taffo.info !285
  %div48.u1_31fixp = shl i32 %45, 5, !taffo.info !287
  %arrayidx49.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u15_17fixp, i32 %i.0, !taffo.info !288
  %arrayidx50.u15_17fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx49.u15_17fixp, i32 0, i32 %j.0, !taffo.info !288
  %46 = lshr i32 %div48.u1_31fixp, 14, !taffo.info !287
  store i32 %46, i32* %arrayidx50.u15_17fixp, align 4, !taffo.info !225
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.info !226, !taffo.initweight !97, !taffo.constinfo !25
  br label %for.cond42, !llvm.loop !289

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !97, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !290

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.13_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u15_17fixp, i32 noundef %factor) #0 !taffo.initweight !291 !taffo.funinfo !292 !taffo.sourceFunction !293 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !109
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !95
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !109
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !111
  %arrayidx.u15_17fixp = getelementptr inbounds i32, i32* %val.u15_17fixp, i32 %0, !taffo.info !52
  %arrayidx4.u15_17fixp = getelementptr inbounds i32, i32* %arrayidx.u15_17fixp, i32 %j.0, !taffo.info !52
  %u15_17fixp = load i32, i32* %arrayidx4.u15_17fixp, align 4, !taffo.info !52
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !125
  %1 = lshr i32 %u15_17fixp, 1, !taffo.info !52
  %2 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !125
  %3 = ashr i32 %1, 8, !taffo.info !52
  %4 = ashr i32 %2, 14, !taffo.info !125
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 8), !taffo.info !294
  %mul.u23_9fixp = shl i32 %5, 1, !taffo.info !297
  %6 = mul nsw i32 %i.0, %m, !taffo.info !111
  %arrayidx5.u15_17fixp = getelementptr inbounds i32, i32* %val.u15_17fixp, i32 %6, !taffo.info !52
  %arrayidx6.u15_17fixp = getelementptr inbounds i32, i32* %arrayidx5.u15_17fixp, i32 %j.0, !taffo.info !52
  %7 = shl i32 %mul.u23_9fixp, 8, !taffo.info !297
  store i32 %7, i32* %arrayidx6.u15_17fixp, align 4, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !298

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !109, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !299

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

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x4155D7B540000000}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x427311BCA0000000}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 0x40D48BBBC0010C6F}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.000000e+01}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.020000e+02}
!10 = !{i32 1, !"NumRegisterParameters", i32 0}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!17 = !{i32 -1}
!18 = !{i32 0, i1 false}
!19 = !{i1 false, !20}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 1.000000e+01, double 1.000000e+01}
!22 = !{!23, i1 false}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 2.000000e+00, double 2.000000e+00}
!25 = !{i1 false, i1 false}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{i32 -1, i32 -1}
!29 = !{i32 0, i1 false, i32 0, i1 false}
!30 = distinct !{null, null}
!31 = !{i32 -1, i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!33 = distinct !{null, null, null, null, null, null, null, null}
!34 = distinct !{!34, !27}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = distinct !{null}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!41 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = !{}
!46 = !{i1 true}
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 30}
!49 = !{double 1.500000e+00, double 1.500000e+00}
!50 = !{!48, !51, i1 false, i2 -1}
!51 = !{double 1.200000e+00, double 1.200000e+00}
!52 = !{!53, !5, i1 false, i2 -1}
!53 = !{!"fixp", i32 32, i32 17}
!54 = !{!55, !56, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 24}
!56 = !{double 0.000000e+00, double 0x406E6666601BC98A}
!57 = !{!58, !59, i1 false, i2 -1}
!58 = !{!"fixp", i32 32, i32 25}
!59 = !{double 3.200000e+00, double 6.400000e+01}
!60 = !{!55, !61, i1 false, i2 -1}
!61 = !{double 6.400000e+00, double 1.280000e+02}
!62 = !{!63, !64, i1 false, i2 -1}
!63 = !{!"fixp", i32 32, i32 26}
!64 = !{double 0x40011110E453D20F, double 0x404555556084A516}
!65 = !{!66, !3, i1 false, i2 -1}
!66 = !{!"float", i32 1, double 0x427311BCA0000000}
!67 = !{i32 0}
!68 = !{!"w"}
!69 = !{!70, !1, i1 false, i2 -1}
!70 = !{!"fixp", i32 32, i32 9}
!71 = !{!63, !72, i1 false, i2 -1}
!72 = !{double 1.600000e+00, double 3.200000e+01}
!73 = !{!74, !75, i1 false, i2 -1}
!74 = !{!"fixp", i32 32, i32 27}
!75 = !{double 0x3FF6C16BDB1A6D6A, double 0x403C71C725C3DEE8}
!76 = !{i32 1}
!77 = !{i1 false, !49, i1 false, i2 -1}
!78 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!79 = !{i1 false, i1 false, i1 false}
!80 = !{i1 false, !51, i1 false, i2 -1}
!81 = !{i1 false, !5, i1 false, i2 -1}
!82 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!83 = !{i1 false, !56, i1 false, i2 -1}
!84 = !{i1 false, i1 false, i1 false, i1 false}
!85 = !{i1 false, !59, i1 false, i2 -1}
!86 = !{i1 false, !61, i1 false, i2 -1}
!87 = !{i1 false, !64, i1 false, i2 -1}
!88 = !{i1 false, !3, i1 false, i2 -1}
!89 = !{i1 false, !1, i1 false, i2 -1}
!90 = !{i1 false, !72, i1 false, i2 -1}
!91 = !{i1 false, !75, i1 false, i2 -1}
!92 = !{i1 false}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 0.000000e+00, double 2.100000e+01}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 0.000000e+00, double 1.000000e+00}
!97 = !{i32 2}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 0.000000e+00, double 4.410000e+02}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 1.000000e+00, double 4.410000e+02}
!102 = distinct !{!102, !27}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 1.000000e+00, double 2.100000e+01}
!105 = distinct !{!105, !27}
!106 = !{i32 1, !107, i32 1, !2, i32 1, !0, i32 1, !4}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 2.000000e+01, double 2.000000e+01}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 1.000000e+00, double 1.000000e+00}
!111 = !{i1 false, !112, i1 false, i2 0}
!112 = !{double 0.000000e+00, double 0.000000e+00}
!113 = distinct !{!113, !27}
!114 = distinct !{!114, !27}
!115 = distinct !{!115, !27}
!116 = distinct !{!116, !27}
!117 = !{i32 1, i32 -1}
!118 = !{i32 1, !47, i32 1, !119}
!119 = !{i1 false, !120, i1 false, i2 0}
!120 = !{double 2.560000e+02, double 2.560000e+02}
!121 = !{void (float*, i32)* @scale_scalar}
!122 = !{i32 -1, i32 2, i32 -1}
!123 = !{i32 1, !107, i32 1, !57, i32 1, !119}
!124 = !{void (i32, float*, i32)* @scale_1d}
!125 = !{!126, !120, i1 false, i2 1}
!126 = !{!"fixp", i32 32, i32 23}
!127 = !{!128, !129, i1 false, i2 -1}
!128 = !{!"fixp", i32 -32, i32 16}
!129 = !{double 8.192000e+02, double 1.638400e+04}
!130 = !{!53, !129, i1 false, i2 -1}
!131 = distinct !{!131, !27}
!132 = !{i32 1, !107, i32 1, !54, i32 1, !119}
!133 = !{!134, !135, i1 false, i2 -1}
!134 = !{!"fixp", i32 -32, i32 15}
!135 = !{double 0.000000e+00, double 0x40EE6666601BC98A}
!136 = !{!137, !135, i1 false, i2 -1}
!137 = !{!"fixp", i32 32, i32 16}
!138 = distinct !{!138, !27}
!139 = !{i32 1, !107, i32 1, !69, i32 1, !119}
!140 = !{!141, !142, i1 false, i2 -1}
!141 = !{!"float", i32 1, double 0x41D5D7B540000000}
!142 = !{double 0.000000e+00, double 0x41D5D7B540000000}
!143 = distinct !{!143, !27}
!144 = !{i32 1, !107, i32 1, !62, i32 1, !119}
!145 = !{!146, !147, i1 false, i2 -1}
!146 = !{!"fixp", i32 -32, i32 17}
!147 = !{double 0x40811110E453D20F, double 0x40C555556084A516}
!148 = !{!149, !147, i1 false, i2 -1}
!149 = !{!"fixp", i32 32, i32 18}
!150 = distinct !{!150, !27}
!151 = !{i32 1, !107, i32 1, !73, i32 1, !119}
!152 = !{!153, !154, i1 false, i2 -1}
!153 = !{!"fixp", i32 -32, i32 18}
!154 = !{double 0x4076C16BDB1A6D6A, double 0x40BC71C725C3DEE8}
!155 = !{!156, !154, i1 false, i2 -1}
!156 = !{!"fixp", i32 32, i32 19}
!157 = distinct !{!157, !27}
!158 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!159 = !{i32 1, !107, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !57, i32 1, !60, i32 1, !62, i32 1, !65, i32 1, !69, i32 1, !71, i32 1, !73}
!160 = distinct !{null}
!161 = !{!137, !5, i1 false, i2 -1}
!162 = !{!134, !163, i1 false, i2 -1}
!163 = !{double 0.000000e+00, double 0x40CE6666601BC98A}
!164 = !{!137, !163, i1 false, i2 -1}
!165 = !{!137, !166, i1 false, i2 -1}
!166 = !{double 0.000000e+00, double 0x40E1DF777807789A}
!167 = !{!153, !168, i1 false, i2 -1}
!168 = !{double 0x402B4E816D52E9B2, double 0x40B555556084A516}
!169 = !{!156, !168, i1 false, i2 -1}
!170 = !{!137, !171, i1 false, i2 -1}
!171 = !{double 0x402B4E816D52E9B2, double 0x40E48A2224180D3D}
!172 = distinct !{!172, !27}
!173 = distinct !{!173, !27}
!174 = !{!128, !175, i1 false, i2 -1}
!175 = !{double 0.000000e+00, double 0x40D8A7AE199ADBB8}
!176 = !{!53, !175, i1 false, i2 -1}
!177 = !{!178, !179, i1 false, i2 -1}
!178 = !{!"fixp", i32 -32, i32 11}
!179 = !{double 0.000000e+00, double 0x4128A7AE199ADBB8}
!180 = !{!181, !179, i1 false, i2 -1}
!181 = !{!"fixp", i32 32, i32 12}
!182 = !{!70, !183, i1 false, i2 -1}
!183 = !{double 0.000000e+00, double 0x4158ECAB03335B77}
!184 = distinct !{!184, !27}
!185 = distinct !{!185, !27}
!186 = !{!70, !187, i1 false, i2 -1}
!187 = !{double 0x3FF6C16BDB1A6D6A, double 0x4155D7BC5C71C971}
!188 = distinct !{!188, !27}
!189 = !{i32 5}
!190 = !{i32 6}
!191 = !{!128, !192, i1 false, i2 -1}
!192 = !{double 0.000000e+00, double 0x40DED199A00192A6}
!193 = !{!53, !192, i1 false, i2 -1}
!194 = !{!195, !196, i1 false, i2 -1}
!195 = !{!"float", i32 1, double 0x4245094BA05C3717}
!196 = !{double 0.000000e+00, double 0x4245094BA05C3717}
!197 = !{!198, !199, i1 false, i2 -1}
!198 = !{!"float", i32 1, double 0x4275B2E6140B86E3}
!199 = !{double 0.000000e+00, double 0x4275B2E6140B86E3}
!200 = distinct !{!200, !27}
!201 = distinct !{!201, !27}
!202 = !{i32 1, !107, i32 1, !65, i32 1, !119}
!203 = !{!204, !205, i1 false, i2 -1}
!204 = !{!"float", i32 1, double 0x42F311BCA0000000}
!205 = !{double 0.000000e+00, double 0x42F311BCA0000000}
!206 = distinct !{!206, !27}
!207 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!208 = distinct !{null}
!209 = !{!210, i1 false}
!210 = !{i1 false, !49, i1 false, i2 0}
!211 = !{!212, i1 false}
!212 = !{i1 false, !213, i1 false, i2 0}
!213 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!214 = !{!74, !108, i1 false, i2 1}
!215 = !{i1 false, !216, i1 false, i2 -1}
!216 = !{double 0.000000e+00, double 2.000000e+01}
!217 = !{i1 false, !96, i1 false, i2 -1}
!218 = !{i32 3}
!219 = !{!74, !216, i1 false, i2 -1}
!220 = !{!221, !96, i1 false, i2 1}
!221 = !{!"fixp", i32 -32, i32 26}
!222 = !{!223, !96, i1 false, i2 1}
!223 = !{!"fixp", i32 32, i32 31}
!224 = !{!55, !56, i1 false, i2 1}
!225 = !{i1 false, i1 false, i1 false, i2 1}
!226 = !{i1 false, !104, i1 false, i2 -1}
!227 = !{!74, !104, i1 false, i2 -1}
!228 = !{!221, !229, i1 false, i2 1}
!229 = !{double 5.000000e-02, double 1.050000e+00}
!230 = !{!48, !229, i1 false, i2 1}
!231 = !{!232, !233, i1 false, i2 1}
!232 = !{!"fixp", i32 -32, i32 29}
!233 = !{double 2.500000e-02, double 5.250000e-01}
!234 = !{!48, !233, i1 false, i2 1}
!235 = !{i1 false, !23}
!236 = !{!223, !237, i1 false, i2 1}
!237 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!238 = !{!55, !61, i1 false, i2 1}
!239 = !{!240, !241, i1 false, i2 1}
!240 = !{!"fixp", i32 -32, i32 28}
!241 = !{double 1.250000e-02, double 2.625000e-01}
!242 = !{!48, !241, i1 false, i2 1}
!243 = !{i1 false, !244}
!244 = !{i1 false, !245, i1 false, i2 0}
!245 = !{double 4.000000e+00, double 4.000000e+00}
!246 = !{!223, !247, i1 false, i2 1}
!247 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!248 = !{!58, !59, i1 false, i2 1}
!249 = !{!240, !250, i1 false, i2 1}
!250 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!251 = !{!48, !250, i1 false, i2 1}
!252 = !{i1 false, !253}
!253 = !{i1 false, !254, i1 false, i2 0}
!254 = !{double 6.000000e+00, double 6.000000e+00}
!255 = !{!223, !256, i1 false, i2 1}
!256 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!257 = !{!63, !64, i1 false, i2 1}
!258 = !{!259, !260, i1 false, i2 1}
!259 = !{!"fixp", i32 -32, i32 27}
!260 = !{double 6.250000e-03, double 1.312500e-01}
!261 = !{!48, !260, i1 false, i2 1}
!262 = !{i1 false, !263}
!263 = !{i1 false, !264, i1 false, i2 0}
!264 = !{double 8.000000e+00, double 8.000000e+00}
!265 = !{!223, !266, i1 false, i2 1}
!266 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!267 = !{!63, !72, i1 false, i2 1}
!268 = !{!259, !269, i1 false, i2 1}
!269 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!270 = !{!48, !269, i1 false, i2 1}
!271 = !{i1 false, !272}
!272 = !{i1 false, !273, i1 false, i2 0}
!273 = !{double 9.000000e+00, double 9.000000e+00}
!274 = !{!223, !275, i1 false, i2 1}
!275 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!276 = !{!74, !75, i1 false, i2 1}
!277 = !{!70, !1, i1 false, i2 1}
!278 = !{!111, i1 false}
!279 = !{!66, !3, i1 false, i2 1}
!280 = !{i1 false, !281, i1 false, i2 -1}
!281 = !{double 0.000000e+00, double 4.000000e+02}
!282 = !{i1 false, !283, i1 false, i2 -1}
!283 = !{double 0.000000e+00, double 1.900000e+01}
!284 = !{!74, !283, i1 false, i2 -1}
!285 = !{!221, !286, i1 false, i2 -1}
!286 = !{double 0.000000e+00, double 0x3FEE666666666666}
!287 = !{!223, !286, i1 false, i2 -1}
!288 = !{!53, !5, i1 false, i2 1}
!289 = distinct !{!289, !27}
!290 = distinct !{!290, !27}
!291 = !{i32 -1, i32 -1, i32 3, i32 -1}
!292 = !{i32 1, !107, i32 1, !107, i32 1, !52, i32 1, !119}
!293 = !{void (i32, i32, float*, i32)* @scale_2d}
!294 = !{!295, !296, i1 false, i2 -1}
!295 = !{!"fixp", i32 -32, i32 8}
!296 = !{double 0.000000e+00, double 0x41548BBBC0010C6F}
!297 = !{!70, !296, i1 false, i2 -1}
!298 = distinct !{!298, !27}
!299 = distinct !{!299, !27}
