; ModuleID = './build/bin/fixed/gemver/8/gemver-standard-8-fixed-8.out.ll.4.taffotmp.ll'
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
  %A.u5_27fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !52
  %u1.u4_28fixp = alloca [20 x i32], align 4, !taffo.info !54
  %v1.u2_30fixp = alloca [20 x i32], align 4, !taffo.info !57
  %u2.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !59
  %v2.u2_30fixp = alloca [20 x i32], align 4, !taffo.info !62
  %w.u17_15fixp = alloca [20 x i32], align 4, !taffo.info !64, !taffo.target !66
  %x.u8_24fixp = alloca [20 x i32], align 4, !taffo.info !67
  %y.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !69
  %z.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !72
  %arraydecay.u5_27fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay12.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u4_28fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay13.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u2_30fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay14.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u3_29fixp, i32 0, i32 0, !taffo.info !59
  %arraydecay15.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u2_30fixp, i32 0, i32 0, !taffo.info !62
  %arraydecay16.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u17_15fixp, i32 0, i32 0, !taffo.info !64, !taffo.target !66
  %arraydecay17.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u8_24fixp, i32 0, i32 0, !taffo.info !67
  %arraydecay18.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !69
  %arraydecay19.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !72
  call void @init_array.12_fixp(i32 20, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [20 x i32]* %arraydecay.u5_27fixp, i32* %arraydecay12.u4_28fixp, i32* %arraydecay13.u2_30fixp, i32* %arraydecay14.u3_29fixp, i32* %arraydecay15.u2_30fixp, i32* %arraydecay16.u17_15fixp, i32* %arraydecay17.u8_24fixp, i32* %arraydecay18.u1_31fixp, i32* %arraydecay19.u1_31fixp), !taffo.info !74, !taffo.constinfo !75
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 8), !taffo.info !74, !taffo.constinfo !76
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 8), !taffo.info !77, !taffo.constinfo !76
  %arraydecay20.u5_27fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !52
  %u5_27fixp = bitcast [20 x i32]* %arraydecay20.u5_27fixp to i32*, !taffo.info !52
  call void @scale_2d.13_fixp(i32 20, i32 20, i32* %u5_27fixp, i32 8), !taffo.info !78, !taffo.constinfo !79
  %arraydecay21.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u4_28fixp, i32 0, i32 0, !taffo.info !54
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay21.u4_28fixp, i32 8), !taffo.info !80, !taffo.constinfo !81
  %arraydecay22.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u2_30fixp, i32 0, i32 0, !taffo.info !57
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay22.u2_30fixp, i32 8), !taffo.info !82, !taffo.constinfo !81
  %arraydecay23.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u3_29fixp, i32 0, i32 0, !taffo.info !59
  call void @scale_1d.5_fixp(i32 20, i32* %arraydecay23.u3_29fixp, i32 8), !taffo.info !83, !taffo.constinfo !81
  %arraydecay24.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u2_30fixp, i32 0, i32 0, !taffo.info !62
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay24.u2_30fixp, i32 8), !taffo.info !84, !taffo.constinfo !81
  %arraydecay25.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u17_15fixp, i32 0, i32 0, !taffo.info !64, !taffo.target !66
  call void @scale_1d.7_fixp(i32 20, i32* %arraydecay25.u17_15fixp, i32 8), !taffo.info !85, !taffo.constinfo !81, !taffo.target !66
  %arraydecay26.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u8_24fixp, i32 0, i32 0, !taffo.info !67
  call void @scale_1d.8_fixp(i32 20, i32* %arraydecay26.u8_24fixp, i32 8), !taffo.info !86, !taffo.constinfo !81
  %arraydecay27.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !69
  call void @scale_1d.9_fixp(i32 20, i32* %arraydecay27.u1_31fixp, i32 8), !taffo.info !87, !taffo.constinfo !81
  %arraydecay28.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !72
  call void @scale_1d.9_fixp(i32 20, i32* %arraydecay28.u1_31fixp, i32 8), !taffo.info !88, !taffo.constinfo !81
  call void @timer_start(), !taffo.constinfo !89
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !47
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !50
  %arraydecay29.u5_27fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay30.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u4_28fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay31.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u2_30fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay32.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u3_29fixp, i32 0, i32 0, !taffo.info !59
  %arraydecay33.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u2_30fixp, i32 0, i32 0, !taffo.info !62
  %arraydecay34.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u17_15fixp, i32 0, i32 0, !taffo.info !64, !taffo.target !66
  %arraydecay35.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u8_24fixp, i32 0, i32 0, !taffo.info !67
  %arraydecay36.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !69
  %arraydecay37.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !72
  call void @kernel_gemver.10_fixp(i32 20, i32 %u2_30fixp, i32 %u2_30fixp1, [20 x i32]* %arraydecay29.u5_27fixp, i32* %arraydecay30.u4_28fixp, i32* %arraydecay31.u2_30fixp, i32* %arraydecay32.u3_29fixp, i32* %arraydecay33.u2_30fixp, i32* %arraydecay34.u17_15fixp, i32* %arraydecay35.u8_24fixp, i32* %arraydecay36.u1_31fixp, i32* %arraydecay37.u1_31fixp), !taffo.info !74, !taffo.constinfo !75
  call void @timer_stop(), !taffo.constinfo !89
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc49, %for.inc48 ], !taffo.info !90
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %arrayidx.u8_24fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u8_24fixp, i32 0, i32 %i.0, !taffo.info !67
  %u8_24fixp = load i32, i32* %arrayidx.u8_24fixp, align 4, !taffo.info !67
  %0 = uitofp i32 %u8_24fixp to float, !taffo.info !67
  %1 = fdiv float %0, 0x4170000000000000, !taffo.info !67
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx38, align 4, !taffo.info !86
  %arrayidx39.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u17_15fixp, i32 0, i32 %i.0, !taffo.info !64, !taffo.target !66
  %u17_15fixp = load i32, i32* %arrayidx39.u17_15fixp, align 4, !taffo.info !64, !taffo.target !66
  %2 = uitofp i32 %u17_15fixp to float, !taffo.info !64, !taffo.target !66
  %3 = fdiv float %2, 3.276800e+04, !taffo.info !64, !taffo.target !66
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !2
  store float %3, float* %arrayidx40, align 4, !taffo.info !85, !taffo.target !66
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !94
  %cmp42 = icmp slt i32 %j.0, 20, !taffo.info !92
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %arrayidx44.u5_27fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u5_27fixp, i32 0, i32 %i.0, !taffo.info !52
  %arrayidx45.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx44.u5_27fixp, i32 0, i32 %j.0, !taffo.info !52
  %u5_27fixp2 = load i32, i32* %arrayidx45.u5_27fixp, align 4, !taffo.info !52
  %4 = uitofp i32 %u5_27fixp2 to float, !taffo.info !52
  %5 = fdiv float %4, 0x41A0000000000000, !taffo.info !52
  %arrayidx46 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i32 0, i32 %j.0, !taffo.info !4
  store float %5, float* %arrayidx47, align 4, !taffo.info !78
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %inc = add nsw i32 %j.0, 1, !taffo.info !96, !taffo.constinfo !25
  br label %for.cond41, !llvm.loop !98

for.end:                                          ; preds = %for.cond41
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %inc49 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !101

for.end50:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !79
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !35 !taffo.funinfo !102 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !92
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !105
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !107
  %add = add nsw i32 %mul, %j.0, !taffo.info !107
  %rem = srem i32 %add, 20, !taffo.info !107, !taffo.constinfo !25
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !105
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !76
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !4
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !4
  %conv = fpext float %2 to double, !taffo.info !4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv), !taffo.constinfo !81
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !109

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !110

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !92
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !105
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !107, !taffo.constinfo !25
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !105
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !76
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !0
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !0
  %conv21 = fpext float %5 to double, !taffo.info !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv21), !taffo.constinfo !81
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond10, !llvm.loop !111

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !92
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !105
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !107, !taffo.constinfo !25
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !105
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !76
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !2
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !2
  %conv37 = fpext float %8 to double, !taffo.info !2
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv37), !taffo.constinfo !81
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond26, !llvm.loop !112

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !28 !taffo.funinfo !29 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !113 !taffo.funinfo !114 !taffo.sourceFunction !117 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !119 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !57
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !57
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !121
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !57
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !121
  %2 = ashr i32 %0, 3, !taffo.info !57
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !122
  %mul.u5_27fixp = shl i32 %3, 1, !taffo.info !125
  %arrayidx1.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !57
  %4 = shl i32 %mul.u5_27fixp, 3, !taffo.info !125
  store i32 %4, i32* %arrayidx1.u2_30fixp, align 4, !taffo.info !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !126

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7_fixp(i32 noundef %n, i32* noundef %val.u17_15fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !127 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u17_15fixp = getelementptr inbounds i32, i32* %val.u17_15fixp, i32 %i.0, !taffo.info !64
  %u17_15fixp = load i32, i32* %arrayidx.u17_15fixp, align 4, !taffo.info !64
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !128
  %0 = lshr i32 %u17_15fixp, 1, !taffo.info !64
  %1 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !128
  %2 = ashr i32 %0, 3, !taffo.info !64
  %3 = ashr i32 %1, 16, !taffo.info !128
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 11), !taffo.info !129
  %mul.u20_12fixp = shl i32 %4, 1, !taffo.info !132
  %arrayidx1.u17_15fixp = getelementptr inbounds i32, i32* %val.u17_15fixp, i32 %i.0, !taffo.info !64
  %5 = shl i32 %mul.u20_12fixp, 3, !taffo.info !132
  store i32 %5, i32* %arrayidx1.u17_15fixp, align 4, !taffo.info !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !134

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5_fixp(i32 noundef %n, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !135 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !59
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !59
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !136
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !59
  %1 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !136
  %2 = ashr i32 %0, 3, !taffo.info !59
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 25), !taffo.info !138
  %mul.u6_26fixp = shl i32 %3, 1, !taffo.info !141
  %arrayidx1.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !59
  %4 = shl i32 %mul.u6_26fixp, 3, !taffo.info !141
  store i32 %4, i32* %arrayidx1.u3_29fixp, align 4, !taffo.info !83
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !142

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8_fixp(i32 noundef %n, i32* noundef %val.u8_24fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !143 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %i.0, !taffo.info !67
  %u8_24fixp = load i32, i32* %arrayidx.u8_24fixp, align 4, !taffo.info !67
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !128
  %0 = lshr i32 %u8_24fixp, 1, !taffo.info !67
  %1 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !128
  %2 = ashr i32 %0, 3, !taffo.info !67
  %3 = ashr i32 %1, 7, !taffo.info !128
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 20), !taffo.info !144
  %mul.u11_21fixp = shl i32 %4, 1, !taffo.info !147
  %arrayidx1.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %i.0, !taffo.info !67
  %5 = shl i32 %mul.u11_21fixp, 3, !taffo.info !147
  store i32 %5, i32* %arrayidx1.u8_24fixp, align 4, !taffo.info !86
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !149

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.9_fixp(i32 noundef %n, i32* noundef %val.u1_31fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !150 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u1_31fixp = getelementptr inbounds i32, i32* %val.u1_31fixp, i32 %i.0, !taffo.info !69
  %u1_31fixp = load i32, i32* %arrayidx.u1_31fixp, align 4, !taffo.info !69
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !128
  %0 = lshr i32 %u1_31fixp, 1, !taffo.info !69
  %1 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !128
  %2 = ashr i32 %0, 3, !taffo.info !69
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 27), !taffo.info !151
  %mul.u4_28fixp = shl i32 %3, 1, !taffo.info !154
  %arrayidx1.u1_31fixp = getelementptr inbounds i32, i32* %val.u1_31fixp, i32 %i.0, !taffo.info !69
  %4 = shl i32 %mul.u4_28fixp, 3, !taffo.info !154
  store i32 %4, i32* %arrayidx1.u1_31fixp, align 4, !taffo.info !87
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !155

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.10_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u5_27fixp, i32* noundef %u1.u4_28fixp, i32* noundef %v1.u2_30fixp, i32* noundef %u2.u3_29fixp, i32* noundef %v2.u2_30fixp, i32* noundef %w.u17_15fixp, i32* noundef %x.u8_24fixp, i32* noundef %y.u1_31fixp, i32* noundef %z.u1_31fixp) #0 !taffo.initweight !156 !taffo.funinfo !157 !taffo.sourceFunction !158 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !92
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !105
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !52
  %arrayidx4.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !52
  %u5_27fixp = load i32, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !159
  %arrayidx5.u4_28fixp = getelementptr inbounds i32, i32* %u1.u4_28fixp, i32 %i.0, !taffo.info !54
  %u4_28fixp = load i32, i32* %arrayidx5.u4_28fixp, align 4, !taffo.info !160
  %arrayidx6.u2_30fixp = getelementptr inbounds i32, i32* %v1.u2_30fixp, i32 %j.0, !taffo.info !57
  %u2_30fixp = load i32, i32* %arrayidx6.u2_30fixp, align 4, !taffo.info !57
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !160
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !57
  %2 = ashr i32 %0, 2, !taffo.info !160
  %3 = ashr i32 %1, 4, !taffo.info !57
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 25), !taffo.info !161
  %mul.u6_26fixp = shl i32 %4, 1, !taffo.info !163
  %5 = lshr i32 %u5_27fixp, 1, !taffo.info !159
  %add.u6_26fixp = add i32 %5, %mul.u6_26fixp, !taffo.info !164
  %arrayidx7.u3_29fixp = getelementptr inbounds i32, i32* %u2.u3_29fixp, i32 %i.0, !taffo.info !59
  %u3_29fixp = load i32, i32* %arrayidx7.u3_29fixp, align 4, !taffo.info !59
  %arrayidx8.u2_30fixp = getelementptr inbounds i32, i32* %v2.u2_30fixp, i32 %j.0, !taffo.info !62
  %u2_30fixp1 = load i32, i32* %arrayidx8.u2_30fixp, align 4, !taffo.info !166
  %6 = lshr i32 %u3_29fixp, 1, !taffo.info !59
  %7 = lshr i32 %u2_30fixp1, 1, !taffo.info !166
  %8 = ashr i32 %7, 1, !taffo.info !166
  %9 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %8, i32 28), !taffo.info !167
  %mul9.u3_29fixp = shl i32 %9, 1, !taffo.info !170
  %10 = lshr i32 %mul9.u3_29fixp, 3, !taffo.info !170
  %add10.u6_26fixp = add i32 %add.u6_26fixp, %10, !taffo.info !171
  %arrayidx11.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !52
  %arrayidx12.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u5_27fixp, i32 0, i32 %j.0, !taffo.info !52
  %11 = shl i32 %add10.u6_26fixp, 1, !taffo.info !171
  store i32 %11, i32* %arrayidx12.u5_27fixp, align 4, !taffo.info !78
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !173

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !174

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !92
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !105
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !92
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !105
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22.u8_24fixp = getelementptr inbounds i32, i32* %x.u8_24fixp, i32 %i.1, !taffo.info !67
  %u8_24fixp = load i32, i32* %arrayidx22.u8_24fixp, align 4, !taffo.info !67
  %arrayidx23.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %j.1, !taffo.info !52
  %arrayidx24.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u5_27fixp, i32 0, i32 %i.1, !taffo.info !52
  %u5_27fixp5 = load i32, i32* %arrayidx24.u5_27fixp, align 4, !taffo.info !52
  %12 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !50
  %13 = lshr i32 %u5_27fixp5, 1, !taffo.info !52
  %14 = ashr i32 %12, 3, !taffo.info !50
  %15 = call i32 @llvm.smul.fix.i32(i32 %14, i32 %13, i32 26), !taffo.info !175
  %mul25.u5_27fixp = shl i32 %15, 1, !taffo.info !177
  %arrayidx26.u1_31fixp = getelementptr inbounds i32, i32* %y.u1_31fixp, i32 %j.1, !taffo.info !69
  %u1_31fixp = load i32, i32* %arrayidx26.u1_31fixp, align 4, !taffo.info !69
  %16 = lshr i32 %mul25.u5_27fixp, 1, !taffo.info !177
  %17 = lshr i32 %u1_31fixp, 1, !taffo.info !69
  %18 = ashr i32 %17, 4, !taffo.info !69
  %19 = call i32 @llvm.smul.fix.i32(i32 %16, i32 %18, i32 26), !taffo.info !175
  %mul27.u5_27fixp = shl i32 %19, 1, !taffo.info !177
  %20 = lshr i32 %mul27.u5_27fixp, 3, !taffo.info !177
  %add28.u8_24fixp = add i32 %u8_24fixp, %20, !taffo.info !178
  %arrayidx29.u8_24fixp = getelementptr inbounds i32, i32* %x.u8_24fixp, i32 %i.1, !taffo.info !67
  store i32 %add28.u8_24fixp, i32* %arrayidx29.u8_24fixp, align 4, !taffo.info !86
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond19, !llvm.loop !180

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond16, !llvm.loop !181

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !92
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !105
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39.u8_24fixp = getelementptr inbounds i32, i32* %x.u8_24fixp, i32 %i.2, !taffo.info !67
  %u8_24fixp2 = load i32, i32* %arrayidx39.u8_24fixp, align 4, !taffo.info !67
  %arrayidx40.u1_31fixp = getelementptr inbounds i32, i32* %z.u1_31fixp, i32 %i.2, !taffo.info !72
  %u1_31fixp4 = load i32, i32* %arrayidx40.u1_31fixp, align 4, !taffo.info !72
  %21 = lshr i32 %u1_31fixp4, 7, !taffo.info !72
  %add41.u8_24fixp = add i32 %u8_24fixp2, %21, !taffo.info !182
  %arrayidx42.u8_24fixp = getelementptr inbounds i32, i32* %x.u8_24fixp, i32 %i.2, !taffo.info !67
  store i32 %add41.u8_24fixp, i32* %arrayidx42.u8_24fixp, align 4, !taffo.info !86
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond36, !llvm.loop !184

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !92
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !105
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !92
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !105
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52.u17_15fixp = getelementptr inbounds i32, i32* %w.u17_15fixp, i32 %i.3, !taffo.info !64
  %u17_15fixp = load i32, i32* %arrayidx52.u17_15fixp, align 4, !taffo.info !64
  %arrayidx53.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.3, !taffo.info !52
  %arrayidx54.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx53.u5_27fixp, i32 0, i32 %j.2, !taffo.info !52
  %u5_27fixp6 = load i32, i32* %arrayidx54.u5_27fixp, align 4, !taffo.info !159
  %22 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !47
  %23 = lshr i32 %u5_27fixp6, 1, !taffo.info !159
  %24 = ashr i32 %22, 4, !taffo.info !47
  %25 = ashr i32 %23, 1, !taffo.info !159
  %26 = call i32 @llvm.smul.fix.i32(i32 %24, i32 %25, i32 25), !taffo.info !185
  %mul55.u6_26fixp = shl i32 %26, 1, !taffo.info !187
  %arrayidx56.u8_24fixp = getelementptr inbounds i32, i32* %x.u8_24fixp, i32 %j.2, !taffo.info !67
  %u8_24fixp3 = load i32, i32* %arrayidx56.u8_24fixp, align 4, !taffo.info !67
  %27 = lshr i32 %mul55.u6_26fixp, 1, !taffo.info !187
  %28 = lshr i32 %u8_24fixp3, 1, !taffo.info !67
  %29 = ashr i32 %27, 7, !taffo.info !187
  %30 = ashr i32 %28, 5, !taffo.info !67
  %31 = call i32 @llvm.smul.fix.i32(i32 %29, i32 %30, i32 18), !taffo.info !188
  %mul57.u13_19fixp = shl i32 %31, 1, !taffo.info !191
  %32 = lshr i32 %mul57.u13_19fixp, 4, !taffo.info !191
  %add58.u17_15fixp = add i32 %u17_15fixp, %32, !taffo.info !193
  %arrayidx59.u17_15fixp = getelementptr inbounds i32, i32* %w.u17_15fixp, i32 %i.3, !taffo.info !64
  store i32 %add58.u17_15fixp, i32* %arrayidx59.u17_15fixp, align 4, !taffo.info !85
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond49, !llvm.loop !195

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond46, !llvm.loop !196

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !197 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !54
  %u4_28fixp = load i32, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !198
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !136
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !198
  %1 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !136
  %2 = ashr i32 %0, 2, !taffo.info !198
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 25), !taffo.info !199
  %mul.u6_26fixp = shl i32 %3, 1, !taffo.info !201
  %arrayidx1.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !54
  %4 = shl i32 %mul.u6_26fixp, 2, !taffo.info !201
  store i32 %4, i32* %arrayidx1.u4_28fixp, align 4, !taffo.info !80
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !202

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u5_27fixp, i32* noundef %u1.u4_28fixp, i32* noundef %v1.u2_30fixp, i32* noundef %u2.u3_29fixp, i32* noundef %v2.u2_30fixp, i32* noundef %w.u17_15fixp, i32* noundef %x.u8_24fixp, i32* noundef %y.u1_31fixp, i32* noundef %z.u1_31fixp) #0 !taffo.initweight !203 !taffo.funinfo !157 !taffo.sourceFunction !204 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !74, !taffo.constinfo !205
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !77, !taffo.constinfo !207
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !210
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.info !211, !taffo.initweight !213
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !214, !taffo.initweight !215
  br i1 %cmp, label %for.body, label %for.end53, !taffo.info !211, !taffo.initweight !216

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !217
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !217
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !210
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !218
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !219
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %u1.u4_28fixp, i32 %i.0, !taffo.info !220
  %3 = lshr i32 %div.u1_31fixp, 3, !taffo.info !219
  store i32 %3, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !221
  %add = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !215, !taffo.constinfo !25
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !223, !taffo.constinfo !25
  %4 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !223, !taffo.constinfo !25
  %5 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !210
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !224
  %div7.u2_30fixp = shl i32 %6, 4, !taffo.info !226
  %7 = lshr i32 %div7.u2_30fixp, 1, !taffo.info !226
  %8 = shl i32 2, 29
  %9 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %8, i32 29), !taffo.info !227
  %div9.u2_30fixp = shl i32 %9, 1, !taffo.info !230, !taffo.constinfo !231
  %conv10.u1_31fixp = shl i32 %div9.u2_30fixp, 1, !taffo.info !232, !taffo.constinfo !231
  %arrayidx11.u3_29fixp = getelementptr inbounds i32, i32* %u2.u3_29fixp, i32 %i.0, !taffo.info !234
  %10 = lshr i32 %conv10.u1_31fixp, 2, !taffo.info !232, !taffo.constinfo !231
  store i32 %10, i32* %arrayidx11.u3_29fixp, align 4, !taffo.info !221
  %add12 = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !215, !taffo.constinfo !25
  %conv13.u5_27fixp = shl i32 %add12, 27, !taffo.info !223, !taffo.constinfo !25
  %11 = lshr i32 %conv13.u5_27fixp, 1, !taffo.info !223, !taffo.constinfo !25
  %12 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !210
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %11, i32 %12, i32 26), !taffo.info !224
  %div14.u2_30fixp = shl i32 %13, 4, !taffo.info !226
  %14 = lshr i32 %div14.u2_30fixp, 1, !taffo.info !226
  %15 = shl i32 4, 28
  %16 = ashr i32 %14, 1, !taffo.info !226
  %17 = call i32 @llvm.sdiv.fix.i32(i32 %16, i32 %15, i32 28), !taffo.info !235
  %div16.u2_30fixp = shl i32 %17, 2, !taffo.info !237, !taffo.constinfo !238
  %conv17.u1_31fixp = shl i32 %div16.u2_30fixp, 1, !taffo.info !241, !taffo.constinfo !238
  %arrayidx18.u2_30fixp = getelementptr inbounds i32, i32* %v1.u2_30fixp, i32 %i.0, !taffo.info !243
  %18 = lshr i32 %conv17.u1_31fixp, 1, !taffo.info !241, !taffo.constinfo !238
  store i32 %18, i32* %arrayidx18.u2_30fixp, align 4, !taffo.info !221
  %add19 = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !215, !taffo.constinfo !25
  %conv20.u5_27fixp = shl i32 %add19, 27, !taffo.info !223, !taffo.constinfo !25
  %19 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !223, !taffo.constinfo !25
  %20 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !210
  %21 = call i32 @llvm.sdiv.fix.i32(i32 %19, i32 %20, i32 26), !taffo.info !224
  %div21.u2_30fixp = shl i32 %21, 4, !taffo.info !226
  %22 = lshr i32 %div21.u2_30fixp, 1, !taffo.info !226
  %23 = shl i32 6, 28
  %24 = ashr i32 %22, 1, !taffo.info !226
  %25 = call i32 @llvm.sdiv.fix.i32(i32 %24, i32 %23, i32 28), !taffo.info !244
  %div23.u2_30fixp = shl i32 %25, 2, !taffo.info !246, !taffo.constinfo !247
  %conv24.u1_31fixp = shl i32 %div23.u2_30fixp, 1, !taffo.info !250, !taffo.constinfo !247
  %arrayidx25.u2_30fixp = getelementptr inbounds i32, i32* %v2.u2_30fixp, i32 %i.0, !taffo.info !252
  %26 = lshr i32 %conv24.u1_31fixp, 1, !taffo.info !250, !taffo.constinfo !247
  store i32 %26, i32* %arrayidx25.u2_30fixp, align 4, !taffo.info !221
  %add26 = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !215, !taffo.constinfo !25
  %conv27.u5_27fixp = shl i32 %add26, 27, !taffo.info !223, !taffo.constinfo !25
  %27 = lshr i32 %conv27.u5_27fixp, 1, !taffo.info !223, !taffo.constinfo !25
  %28 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !210
  %29 = call i32 @llvm.sdiv.fix.i32(i32 %27, i32 %28, i32 26), !taffo.info !224
  %div28.u2_30fixp = shl i32 %29, 4, !taffo.info !226
  %30 = lshr i32 %div28.u2_30fixp, 1, !taffo.info !226
  %31 = shl i32 8, 27
  %32 = ashr i32 %30, 2, !taffo.info !226
  %33 = call i32 @llvm.sdiv.fix.i32(i32 %32, i32 %31, i32 27), !taffo.info !253
  %div30.u2_30fixp = shl i32 %33, 3, !taffo.info !255, !taffo.constinfo !256
  %conv31.u1_31fixp = shl i32 %div30.u2_30fixp, 1, !taffo.info !257, !taffo.constinfo !256
  %arrayidx32.u1_31fixp = getelementptr inbounds i32, i32* %y.u1_31fixp, i32 %i.0, !taffo.info !259
  store i32 %conv31.u1_31fixp, i32* %arrayidx32.u1_31fixp, align 4, !taffo.info !221
  %add33 = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !215, !taffo.constinfo !25
  %conv34.u5_27fixp = shl i32 %add33, 27, !taffo.info !223, !taffo.constinfo !25
  %34 = lshr i32 %conv34.u5_27fixp, 1, !taffo.info !223, !taffo.constinfo !25
  %35 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !210
  %36 = call i32 @llvm.sdiv.fix.i32(i32 %34, i32 %35, i32 26), !taffo.info !224
  %div35.u2_30fixp = shl i32 %36, 4, !taffo.info !226
  %37 = lshr i32 %div35.u2_30fixp, 1, !taffo.info !226
  %38 = shl i32 9, 27
  %39 = ashr i32 %37, 2, !taffo.info !226
  %40 = call i32 @llvm.sdiv.fix.i32(i32 %39, i32 %38, i32 27), !taffo.info !260
  %div37.u2_30fixp = shl i32 %40, 3, !taffo.info !262, !taffo.constinfo !263
  %conv38.u1_31fixp = shl i32 %div37.u2_30fixp, 1, !taffo.info !266, !taffo.constinfo !263
  %arrayidx39.u1_31fixp = getelementptr inbounds i32, i32* %z.u1_31fixp, i32 %i.0, !taffo.info !268
  store i32 %conv38.u1_31fixp, i32* %arrayidx39.u1_31fixp, align 4, !taffo.info !221
  %arrayidx40.u8_24fixp = getelementptr inbounds i32, i32* %x.u8_24fixp, i32 %i.0, !taffo.info !269
  store i32 0, i32* %arrayidx40.u8_24fixp, align 4, !taffo.info !221, !taffo.constinfo !270
  %arrayidx41.u17_15fixp = getelementptr inbounds i32, i32* %w.u17_15fixp, i32 %i.0, !taffo.info !271
  store i32 0, i32* %arrayidx41.u17_15fixp, align 4, !taffo.info !221, !taffo.constinfo !270
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !211, !taffo.initweight !213
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.info !214, !taffo.initweight !215
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.info !211, !taffo.initweight !216

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !272, !taffo.initweight !215
  %rem = srem i32 %mul, %n, !taffo.info !274, !taffo.initweight !216
  %conv46.u5_27fixp = shl i32 %rem, 27, !taffo.info !276
  %conv47.u5_27fixp = shl i32 %n, 27, !taffo.info !210
  %41 = lshr i32 %conv46.u5_27fixp, 1, !taffo.info !276
  %42 = lshr i32 %conv47.u5_27fixp, 1, !taffo.info !210
  %43 = call i32 @llvm.sdiv.fix.i32(i32 %41, i32 %42, i32 26), !taffo.info !277
  %div48.u1_31fixp = shl i32 %43, 5, !taffo.info !279
  %arrayidx49.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !280
  %arrayidx50.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx49.u5_27fixp, i32 0, i32 %j.0, !taffo.info !280
  %44 = lshr i32 %div48.u1_31fixp, 4, !taffo.info !279
  store i32 %44, i32* %arrayidx50.u5_27fixp, align 4, !taffo.info !221
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.info !222, !taffo.initweight !215, !taffo.constinfo !25
  br label %for.cond42, !llvm.loop !281

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.info !222, !taffo.initweight !215, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !282

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.13_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !283 !taffo.funinfo !284 !taffo.sourceFunction !285 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !92
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !105
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !107
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %0, !taffo.info !52
  %arrayidx4.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx.u5_27fixp, i32 %j.0, !taffo.info !52
  %u5_27fixp = load i32, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !52
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !128
  %1 = lshr i32 %u5_27fixp, 1, !taffo.info !52
  %2 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !128
  %3 = ashr i32 %1, 3, !taffo.info !52
  %4 = ashr i32 %2, 4, !taffo.info !128
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 23), !taffo.info !286
  %mul.u8_24fixp = shl i32 %5, 1, !taffo.info !289
  %6 = mul nsw i32 %i.0, %m, !taffo.info !107
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %6, !taffo.info !52
  %arrayidx6.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx5.u5_27fixp, i32 %j.0, !taffo.info !52
  %7 = shl i32 %mul.u8_24fixp, 3, !taffo.info !289
  store i32 %7, i32* %arrayidx6.u5_27fixp, align 4, !taffo.info !78
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !290

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !291

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
!1 = !{double 0.000000e+00, double 0x406A5F011F4F50A0}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x40F01ADA40000000}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 0x403522223E186983}
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
!53 = !{!"fixp", i32 32, i32 27}
!54 = !{!55, !56, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 28}
!56 = !{double 0.000000e+00, double 7.600000e+00}
!57 = !{!48, !58, i1 false, i2 -1}
!58 = !{double 1.000000e-01, double 2.000000e+00}
!59 = !{!60, !61, i1 false, i2 -1}
!60 = !{!"fixp", i32 32, i32 29}
!61 = !{double 2.000000e-01, double 4.000000e+00}
!62 = !{!48, !63, i1 false, i2 -1}
!63 = !{double 6.666700e-02, double 0x3FF55554FBDAD752}
!64 = !{!65, !3, i1 false, i2 -1}
!65 = !{!"fixp", i32 32, i32 15}
!66 = !{!"w"}
!67 = !{!68, !1, i1 false, i2 -1}
!68 = !{!"fixp", i32 32, i32 24}
!69 = !{!70, !71, i1 false, i2 -1}
!70 = !{!"fixp", i32 32, i32 31}
!71 = !{double 5.000000e-02, double 1.000000e+00}
!72 = !{!70, !73, i1 false, i2 -1}
!73 = !{double 4.444400e-02, double 8.888890e-01}
!74 = !{i1 false, !49, i1 false, i2 -1}
!75 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!76 = !{i1 false, i1 false, i1 false}
!77 = !{i1 false, !51, i1 false, i2 -1}
!78 = !{i1 false, !5, i1 false, i2 -1}
!79 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!80 = !{i1 false, !56, i1 false, i2 -1}
!81 = !{i1 false, i1 false, i1 false, i1 false}
!82 = !{i1 false, !58, i1 false, i2 -1}
!83 = !{i1 false, !61, i1 false, i2 -1}
!84 = !{i1 false, !63, i1 false, i2 -1}
!85 = !{i1 false, !3, i1 false, i2 -1}
!86 = !{i1 false, !1, i1 false, i2 -1}
!87 = !{i1 false, !71, i1 false, i2 -1}
!88 = !{i1 false, !73, i1 false, i2 -1}
!89 = !{i1 false}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 0.000000e+00, double 2.100000e+01}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 0.000000e+00, double 1.000000e+00}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 0.000000e+00, double 4.410000e+02}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 1.000000e+00, double 4.410000e+02}
!98 = distinct !{!98, !27}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 1.000000e+00, double 2.100000e+01}
!101 = distinct !{!101, !27}
!102 = !{i32 1, !103, i32 1, !2, i32 1, !0, i32 1, !4}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 2.000000e+01, double 2.000000e+01}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 1.000000e+00, double 1.000000e+00}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 0.000000e+00, double 0.000000e+00}
!109 = distinct !{!109, !27}
!110 = distinct !{!110, !27}
!111 = distinct !{!111, !27}
!112 = distinct !{!112, !27}
!113 = !{i32 1, i32 -1}
!114 = !{i32 1, !47, i32 1, !115}
!115 = !{i1 false, !116, i1 false, i2 0}
!116 = !{double 8.000000e+00, double 8.000000e+00}
!117 = !{void (float*, i32)* @scale_scalar}
!118 = !{i32 -1, i32 2, i32 -1}
!119 = !{i32 1, !103, i32 1, !57, i32 1, !115}
!120 = !{void (i32, float*, i32)* @scale_1d}
!121 = !{!53, !116, i1 false, i2 1}
!122 = !{!123, !124, i1 false, i2 -1}
!123 = !{!"fixp", i32 -32, i32 26}
!124 = !{double 8.000000e-01, double 1.600000e+01}
!125 = !{!53, !124, i1 false, i2 -1}
!126 = distinct !{!126, !27}
!127 = !{i32 1, !103, i32 1, !64, i32 1, !115}
!128 = !{!55, !116, i1 false, i2 1}
!129 = !{!130, !131, i1 false, i2 -1}
!130 = !{!"fixp", i32 -32, i32 11}
!131 = !{double 0.000000e+00, double 0x41201ADA40000000}
!132 = !{!133, !131, i1 false, i2 -1}
!133 = !{!"fixp", i32 32, i32 12}
!134 = distinct !{!134, !27}
!135 = !{i32 1, !103, i32 1, !59, i32 1, !115}
!136 = !{!137, !116, i1 false, i2 1}
!137 = !{!"fixp", i32 32, i32 26}
!138 = !{!139, !140, i1 false, i2 -1}
!139 = !{!"fixp", i32 -32, i32 25}
!140 = !{double 1.600000e+00, double 3.200000e+01}
!141 = !{!137, !140, i1 false, i2 -1}
!142 = distinct !{!142, !27}
!143 = !{i32 1, !103, i32 1, !67, i32 1, !115}
!144 = !{!145, !146, i1 false, i2 -1}
!145 = !{!"fixp", i32 -32, i32 20}
!146 = !{double 0.000000e+00, double 0x409A5F011F4F50A0}
!147 = !{!148, !146, i1 false, i2 -1}
!148 = !{!"fixp", i32 32, i32 21}
!149 = distinct !{!149, !27}
!150 = !{i32 1, !103, i32 1, !69, i32 1, !115}
!151 = !{!152, !153, i1 false, i2 -1}
!152 = !{!"fixp", i32 -32, i32 27}
!153 = !{double 4.000000e-01, double 8.000000e+00}
!154 = !{!55, !153, i1 false, i2 -1}
!155 = distinct !{!155, !27}
!156 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!157 = !{i32 1, !103, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !57, i32 1, !59, i32 1, !62, i32 1, !64, i32 1, !67, i32 1, !69, i32 1, !72}
!158 = distinct !{null}
!159 = !{!137, !5, i1 false, i2 -1}
!160 = !{!53, !56, i1 false, i2 -1}
!161 = !{!139, !162, i1 false, i2 -1}
!162 = !{double 0.000000e+00, double 1.520000e+01}
!163 = !{!137, !162, i1 false, i2 -1}
!164 = !{!137, !165, i1 false, i2 -1}
!165 = !{double 0.000000e+00, double 0x40422AAAB8A5CE5B}
!166 = !{!60, !63, i1 false, i2 -1}
!167 = !{!168, !169, i1 false, i2 -1}
!168 = !{!"fixp", i32 -32, i32 28}
!169 = !{double 0x3F8B4E8AA78E4EE4, double 0x40155554FBDAD752}
!170 = !{!60, !169, i1 false, i2 -1}
!171 = !{!137, !172, i1 false, i2 -1}
!172 = !{double 0x3F8B4E8AA78E4EE4, double 0x4044D55558212945}
!173 = distinct !{!173, !27}
!174 = distinct !{!174, !27}
!175 = !{!123, !176, i1 false, i2 -1}
!176 = !{double 0.000000e+00, double 0x40395C2917507E9D}
!177 = !{!53, !176, i1 false, i2 -1}
!178 = !{!68, !179, i1 false, i2 -1}
!179 = !{double 0.000000e+00, double 0x406D8A8642396074}
!180 = distinct !{!180, !27}
!181 = distinct !{!181, !27}
!182 = !{!68, !183, i1 false, i2 -1}
!183 = !{double 4.444400e-02, double 0x406A7B72E6A76966}
!184 = distinct !{!184, !27}
!185 = !{!139, !186, i1 false, i2 -1}
!186 = !{double 0.000000e+00, double 0x403FB3335D249E44}
!187 = !{!137, !186, i1 false, i2 -1}
!188 = !{!189, !190, i1 false, i2 -1}
!189 = !{!"fixp", i32 -32, i32 18}
!190 = !{double 0.000000e+00, double 0x40BA1FB6D8C80C3E}
!191 = !{!192, !190, i1 false, i2 -1}
!192 = !{!"fixp", i32 32, i32 19}
!193 = !{!65, !194, i1 false, i2 -1}
!194 = !{double 0.000000e+00, double 0x40F1BCD5AD8C80C4}
!195 = distinct !{!195, !27}
!196 = distinct !{!196, !27}
!197 = !{i32 1, !103, i32 1, !54, i32 1, !115}
!198 = !{!137, !56, i1 false, i2 -1}
!199 = !{!139, !200, i1 false, i2 -1}
!200 = !{double 0.000000e+00, double 6.080000e+01}
!201 = !{!137, !200, i1 false, i2 -1}
!202 = distinct !{!202, !27}
!203 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!204 = distinct !{null}
!205 = !{!206, i1 false}
!206 = !{i1 false, !49, i1 false, i2 0}
!207 = !{!208, i1 false}
!208 = !{i1 false, !209, i1 false, i2 0}
!209 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!210 = !{!53, !104, i1 false, i2 1}
!211 = !{i1 false, !212, i1 false, i2 -1}
!212 = !{double 0.000000e+00, double 2.000000e+01}
!213 = !{i32 0}
!214 = !{i1 false, !93, i1 false, i2 -1}
!215 = !{i32 2}
!216 = !{i32 3}
!217 = !{!53, !212, i1 false, i2 -1}
!218 = !{!123, !93, i1 false, i2 1}
!219 = !{!70, !93, i1 false, i2 1}
!220 = !{!55, !56, i1 false, i2 1}
!221 = !{i1 false, i1 false, i1 false, i2 1}
!222 = !{i1 false, !100, i1 false, i2 -1}
!223 = !{!53, !100, i1 false, i2 -1}
!224 = !{!123, !225, i1 false, i2 1}
!225 = !{double 5.000000e-02, double 1.050000e+00}
!226 = !{!48, !225, i1 false, i2 1}
!227 = !{!228, !229, i1 false, i2 1}
!228 = !{!"fixp", i32 -32, i32 29}
!229 = !{double 2.500000e-02, double 5.250000e-01}
!230 = !{!48, !229, i1 false, i2 1}
!231 = !{i1 false, !23}
!232 = !{!70, !233, i1 false, i2 1}
!233 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!234 = !{!60, !61, i1 false, i2 1}
!235 = !{!168, !236, i1 false, i2 1}
!236 = !{double 1.250000e-02, double 2.625000e-01}
!237 = !{!48, !236, i1 false, i2 1}
!238 = !{i1 false, !239}
!239 = !{i1 false, !240, i1 false, i2 0}
!240 = !{double 4.000000e+00, double 4.000000e+00}
!241 = !{!70, !242, i1 false, i2 1}
!242 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!243 = !{!48, !58, i1 false, i2 1}
!244 = !{!168, !245, i1 false, i2 1}
!245 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!246 = !{!48, !245, i1 false, i2 1}
!247 = !{i1 false, !248}
!248 = !{i1 false, !249, i1 false, i2 0}
!249 = !{double 6.000000e+00, double 6.000000e+00}
!250 = !{!70, !251, i1 false, i2 1}
!251 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!252 = !{!48, !63, i1 false, i2 1}
!253 = !{!152, !254, i1 false, i2 1}
!254 = !{double 6.250000e-03, double 1.312500e-01}
!255 = !{!48, !254, i1 false, i2 1}
!256 = !{i1 false, !115}
!257 = !{!70, !258, i1 false, i2 1}
!258 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!259 = !{!70, !71, i1 false, i2 1}
!260 = !{!152, !261, i1 false, i2 1}
!261 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!262 = !{!48, !261, i1 false, i2 1}
!263 = !{i1 false, !264}
!264 = !{i1 false, !265, i1 false, i2 0}
!265 = !{double 9.000000e+00, double 9.000000e+00}
!266 = !{!70, !267, i1 false, i2 1}
!267 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!268 = !{!70, !73, i1 false, i2 1}
!269 = !{!68, !1, i1 false, i2 1}
!270 = !{!107, i1 false}
!271 = !{!65, !3, i1 false, i2 1}
!272 = !{i1 false, !273, i1 false, i2 -1}
!273 = !{double 0.000000e+00, double 4.000000e+02}
!274 = !{i1 false, !275, i1 false, i2 -1}
!275 = !{double 0.000000e+00, double 1.900000e+01}
!276 = !{!53, !275, i1 false, i2 -1}
!277 = !{!123, !278, i1 false, i2 -1}
!278 = !{double 0.000000e+00, double 0x3FEE666666666666}
!279 = !{!70, !278, i1 false, i2 -1}
!280 = !{!53, !5, i1 false, i2 1}
!281 = distinct !{!281, !27}
!282 = distinct !{!282, !27}
!283 = !{i32 -1, i32 -1, i32 3, i32 -1}
!284 = !{i32 1, !103, i32 1, !103, i32 1, !52, i32 1, !115}
!285 = !{void (i32, i32, float*, i32)* @scale_2d}
!286 = !{!287, !288, i1 false, i2 -1}
!287 = !{!"fixp", i32 -32, i32 23}
!288 = !{double 0.000000e+00, double 0x406522223E186983}
!289 = !{!68, !288, i1 false, i2 -1}
!290 = distinct !{!290, !27}
!291 = distinct !{!291, !27}
