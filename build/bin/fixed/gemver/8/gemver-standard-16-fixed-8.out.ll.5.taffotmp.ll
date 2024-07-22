; ModuleID = './build/bin/fixed/gemver/8/gemver-standard-16-fixed-8.out.ll.4.taffotmp.ll'
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
  %A.u7_25fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !52
  %u1.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !54
  %v1.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !57
  %u2.u4_28fixp = alloca [20 x i32], align 4, !taffo.info !60
  %v2.u2_30fixp = alloca [20 x i32], align 4, !taffo.info !63
  %w.u21_11fixp = alloca [20 x i32], align 4, !taffo.info !65, !taffo.target !67
  %x.u11_21fixp = alloca [20 x i32], align 4, !taffo.info !68
  %y.u2_30fixp = alloca [20 x i32], align 4, !taffo.info !70
  %z.u2_30fixp = alloca [20 x i32], align 4, !taffo.info !72
  %arraydecay.u7_25fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u7_25fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay12.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u5_27fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay13.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u3_29fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay14.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u4_28fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay15.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u2_30fixp, i32 0, i32 0, !taffo.info !63
  %arraydecay16.u21_11fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u21_11fixp, i32 0, i32 0, !taffo.info !65, !taffo.target !67
  %arraydecay17.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u11_21fixp, i32 0, i32 0, !taffo.info !68
  %arraydecay18.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u2_30fixp, i32 0, i32 0, !taffo.info !70
  %arraydecay19.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u2_30fixp, i32 0, i32 0, !taffo.info !72
  call void @init_array.12_fixp(i32 20, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [20 x i32]* %arraydecay.u7_25fixp, i32* %arraydecay12.u5_27fixp, i32* %arraydecay13.u3_29fixp, i32* %arraydecay14.u4_28fixp, i32* %arraydecay15.u2_30fixp, i32* %arraydecay16.u21_11fixp, i32* %arraydecay17.u11_21fixp, i32* %arraydecay18.u2_30fixp, i32* %arraydecay19.u2_30fixp), !taffo.info !74, !taffo.constinfo !75
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 16), !taffo.info !74, !taffo.constinfo !76
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 16), !taffo.info !77, !taffo.constinfo !76
  %arraydecay20.u7_25fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u7_25fixp, i32 0, i32 0, !taffo.info !52
  %u7_25fixp = bitcast [20 x i32]* %arraydecay20.u7_25fixp to i32*, !taffo.info !52
  call void @scale_2d.13_fixp(i32 20, i32 20, i32* %u7_25fixp, i32 16), !taffo.info !78, !taffo.constinfo !79
  %arraydecay21.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u5_27fixp, i32 0, i32 0, !taffo.info !54
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay21.u5_27fixp, i32 16), !taffo.info !80, !taffo.constinfo !81
  %arraydecay22.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u3_29fixp, i32 0, i32 0, !taffo.info !57
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay22.u3_29fixp, i32 16), !taffo.info !82, !taffo.constinfo !81
  %arraydecay23.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u4_28fixp, i32 0, i32 0, !taffo.info !60
  call void @scale_1d.5_fixp(i32 20, i32* %arraydecay23.u4_28fixp, i32 16), !taffo.info !83, !taffo.constinfo !81
  %arraydecay24.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u2_30fixp, i32 0, i32 0, !taffo.info !63
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay24.u2_30fixp, i32 16), !taffo.info !84, !taffo.constinfo !81
  %arraydecay25.u21_11fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u21_11fixp, i32 0, i32 0, !taffo.info !65, !taffo.target !67
  call void @scale_1d.7_fixp(i32 20, i32* %arraydecay25.u21_11fixp, i32 16), !taffo.info !85, !taffo.constinfo !81, !taffo.target !67
  %arraydecay26.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u11_21fixp, i32 0, i32 0, !taffo.info !68
  call void @scale_1d.8_fixp(i32 20, i32* %arraydecay26.u11_21fixp, i32 16), !taffo.info !86, !taffo.constinfo !81
  %arraydecay27.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u2_30fixp, i32 0, i32 0, !taffo.info !70
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay27.u2_30fixp, i32 16), !taffo.info !87, !taffo.constinfo !81
  %arraydecay28.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u2_30fixp, i32 0, i32 0, !taffo.info !72
  call void @scale_1d.6_fixp(i32 20, i32* %arraydecay28.u2_30fixp, i32 16), !taffo.info !88, !taffo.constinfo !81
  call void @timer_start(), !taffo.constinfo !89
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !47
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !50
  %arraydecay29.u7_25fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u7_25fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay30.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u5_27fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay31.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u3_29fixp, i32 0, i32 0, !taffo.info !57
  %arraydecay32.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u4_28fixp, i32 0, i32 0, !taffo.info !60
  %arraydecay33.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u2_30fixp, i32 0, i32 0, !taffo.info !63
  %arraydecay34.u21_11fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u21_11fixp, i32 0, i32 0, !taffo.info !65, !taffo.target !67
  %arraydecay35.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u11_21fixp, i32 0, i32 0, !taffo.info !68
  %arraydecay36.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u2_30fixp, i32 0, i32 0, !taffo.info !70
  %arraydecay37.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u2_30fixp, i32 0, i32 0, !taffo.info !72
  call void @kernel_gemver.10_fixp(i32 20, i32 %u2_30fixp1, i32 %u2_30fixp, [20 x i32]* %arraydecay29.u7_25fixp, i32* %arraydecay30.u5_27fixp, i32* %arraydecay31.u3_29fixp, i32* %arraydecay32.u4_28fixp, i32* %arraydecay33.u2_30fixp, i32* %arraydecay34.u21_11fixp, i32* %arraydecay35.u11_21fixp, i32* %arraydecay36.u2_30fixp, i32* %arraydecay37.u2_30fixp), !taffo.info !74, !taffo.constinfo !75
  call void @timer_stop(), !taffo.constinfo !89
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc49, %for.inc48 ], !taffo.info !90
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %arrayidx.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u11_21fixp, i32 0, i32 %i.0, !taffo.info !68
  %u11_21fixp = load i32, i32* %arrayidx.u11_21fixp, align 4, !taffo.info !68
  %0 = uitofp i32 %u11_21fixp to float, !taffo.info !68
  %1 = fdiv float %0, 0x4140000000000000, !taffo.info !68
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx38, align 4, !taffo.info !86
  %arrayidx39.u21_11fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u21_11fixp, i32 0, i32 %i.0, !taffo.info !65, !taffo.target !67
  %u21_11fixp = load i32, i32* %arrayidx39.u21_11fixp, align 4, !taffo.info !65, !taffo.target !67
  %2 = uitofp i32 %u21_11fixp to float, !taffo.info !65, !taffo.target !67
  %3 = fdiv float %2, 2.048000e+03, !taffo.info !65, !taffo.target !67
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !2
  store float %3, float* %arrayidx40, align 4, !taffo.info !85, !taffo.target !67
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !94
  %cmp42 = icmp slt i32 %j.0, 20, !taffo.info !92
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %arrayidx44.u7_25fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u7_25fixp, i32 0, i32 %i.0, !taffo.info !52
  %arrayidx45.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx44.u7_25fixp, i32 0, i32 %j.0, !taffo.info !52
  %u7_25fixp2 = load i32, i32* %arrayidx45.u7_25fixp, align 4, !taffo.info !52
  %4 = uitofp i32 %u7_25fixp2 to float, !taffo.info !52
  %5 = fdiv float %4, 0x4180000000000000, !taffo.info !52
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
define internal void @scale_1d.6_fixp(i32 noundef %n, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !119 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !63
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !63
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !121
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !63
  %1 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !121
  %2 = ashr i32 %0, 4, !taffo.info !63
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 25), !taffo.info !123
  %mul.u6_26fixp = shl i32 %3, 1, !taffo.info !126
  %arrayidx1.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !63
  %4 = shl i32 %mul.u6_26fixp, 4, !taffo.info !126
  store i32 %4, i32* %arrayidx1.u2_30fixp, align 4, !taffo.info !84
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !127

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !128 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !54
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !54
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !129
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !54
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !129
  %2 = ashr i32 %0, 3, !taffo.info !54
  %3 = ashr i32 %1, 3, !taffo.info !129
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 23), !taffo.info !130
  %mul.u8_24fixp = shl i32 %4, 1, !taffo.info !133
  %arrayidx1.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !54
  %5 = shl i32 %mul.u8_24fixp, 3, !taffo.info !133
  store i32 %5, i32* %arrayidx1.u5_27fixp, align 4, !taffo.info !80
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !135

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.7_fixp(i32 noundef %n, i32* noundef %val.u21_11fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !136 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u21_11fixp = getelementptr inbounds i32, i32* %val.u21_11fixp, i32 %i.0, !taffo.info !65
  %u21_11fixp = load i32, i32* %arrayidx.u21_11fixp, align 4, !taffo.info !65
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !129
  %0 = lshr i32 %u21_11fixp, 1, !taffo.info !65
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !129
  %2 = ashr i32 %0, 4, !taffo.info !65
  %3 = ashr i32 %1, 20, !taffo.info !129
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 6), !taffo.info !137
  %mul.u25_7fixp = shl i32 %4, 1, !taffo.info !140
  %arrayidx1.u21_11fixp = getelementptr inbounds i32, i32* %val.u21_11fixp, i32 %i.0, !taffo.info !65
  %5 = shl i32 %mul.u25_7fixp, 4, !taffo.info !140
  store i32 %5, i32* %arrayidx1.u21_11fixp, align 4, !taffo.info !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !142

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !143 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !57
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !57
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !144
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !57
  %1 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !144
  %2 = ashr i32 %0, 4, !taffo.info !57
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 24), !taffo.info !145
  %mul.u7_25fixp = shl i32 %3, 1, !taffo.info !148
  %arrayidx1.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !57
  %4 = shl i32 %mul.u7_25fixp, 4, !taffo.info !148
  store i32 %4, i32* %arrayidx1.u3_29fixp, align 4, !taffo.info !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !149

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.8_fixp(i32 noundef %n, i32* noundef %val.u11_21fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !150 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %i.0, !taffo.info !68
  %u11_21fixp = load i32, i32* %arrayidx.u11_21fixp, align 4, !taffo.info !68
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !129
  %0 = lshr i32 %u11_21fixp, 1, !taffo.info !68
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !129
  %2 = ashr i32 %0, 4, !taffo.info !68
  %3 = ashr i32 %1, 10, !taffo.info !129
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 16), !taffo.info !151
  %mul.u15_17fixp = shl i32 %4, 1, !taffo.info !154
  %arrayidx1.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %i.0, !taffo.info !68
  %5 = shl i32 %mul.u15_17fixp, 4, !taffo.info !154
  store i32 %5, i32* %arrayidx1.u11_21fixp, align 4, !taffo.info !86
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !156

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.10_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u7_25fixp, i32* noundef %u1.u5_27fixp, i32* noundef %v1.u3_29fixp, i32* noundef %u2.u4_28fixp, i32* noundef %v2.u2_30fixp, i32* noundef %w.u21_11fixp, i32* noundef %x.u11_21fixp, i32* noundef %y.u2_30fixp, i32* noundef %z.u2_30fixp) #0 !taffo.initweight !157 !taffo.funinfo !158 !taffo.sourceFunction !159 {
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
  %arrayidx.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u7_25fixp, i32 %i.0, !taffo.info !52
  %arrayidx4.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u7_25fixp, i32 0, i32 %j.0, !taffo.info !52
  %u7_25fixp = load i32, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !160
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %u1.u5_27fixp, i32 %i.0, !taffo.info !54
  %u5_27fixp = load i32, i32* %arrayidx5.u5_27fixp, align 4, !taffo.info !161
  %arrayidx6.u3_29fixp = getelementptr inbounds i32, i32* %v1.u3_29fixp, i32 %j.0, !taffo.info !57
  %u3_29fixp = load i32, i32* %arrayidx6.u3_29fixp, align 4, !taffo.info !57
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !161
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !57
  %2 = ashr i32 %0, 3, !taffo.info !161
  %3 = ashr i32 %1, 5, !taffo.info !57
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 23), !taffo.info !162
  %mul.u8_24fixp = shl i32 %4, 1, !taffo.info !164
  %5 = lshr i32 %u7_25fixp, 1, !taffo.info !160
  %add.u8_24fixp = add i32 %5, %mul.u8_24fixp, !taffo.info !165
  %arrayidx7.u4_28fixp = getelementptr inbounds i32, i32* %u2.u4_28fixp, i32 %i.0, !taffo.info !60
  %u4_28fixp = load i32, i32* %arrayidx7.u4_28fixp, align 4, !taffo.info !167
  %arrayidx8.u2_30fixp = getelementptr inbounds i32, i32* %v2.u2_30fixp, i32 %j.0, !taffo.info !63
  %u2_30fixp = load i32, i32* %arrayidx8.u2_30fixp, align 4, !taffo.info !63
  %6 = lshr i32 %u4_28fixp, 1, !taffo.info !167
  %7 = lshr i32 %u2_30fixp, 1, !taffo.info !63
  %8 = ashr i32 %6, 1, !taffo.info !167
  %9 = ashr i32 %7, 3, !taffo.info !63
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 26), !taffo.info !168
  %mul9.u5_27fixp = shl i32 %10, 1, !taffo.info !171
  %11 = lshr i32 %mul9.u5_27fixp, 3, !taffo.info !171
  %add10.u8_24fixp = add i32 %add.u8_24fixp, %11, !taffo.info !172
  %arrayidx11.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u7_25fixp, i32 %i.0, !taffo.info !52
  %arrayidx12.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u7_25fixp, i32 0, i32 %j.0, !taffo.info !52
  %12 = shl i32 %add10.u8_24fixp, 1, !taffo.info !172
  store i32 %12, i32* %arrayidx12.u7_25fixp, align 4, !taffo.info !78
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !174

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !175

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
  %arrayidx22.u11_21fixp = getelementptr inbounds i32, i32* %x.u11_21fixp, i32 %i.1, !taffo.info !68
  %u11_21fixp = load i32, i32* %arrayidx22.u11_21fixp, align 4, !taffo.info !68
  %arrayidx23.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u7_25fixp, i32 %j.1, !taffo.info !52
  %arrayidx24.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u7_25fixp, i32 0, i32 %i.1, !taffo.info !52
  %u7_25fixp5 = load i32, i32* %arrayidx24.u7_25fixp, align 4, !taffo.info !52
  %13 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !50
  %14 = lshr i32 %u7_25fixp5, 1, !taffo.info !52
  %15 = ashr i32 %13, 6, !taffo.info !50
  %16 = ashr i32 %14, 1, !taffo.info !52
  %17 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %16, i32 23), !taffo.info !176
  %mul25.u8_24fixp = shl i32 %17, 1, !taffo.info !178
  %arrayidx26.u2_30fixp = getelementptr inbounds i32, i32* %y.u2_30fixp, i32 %j.1, !taffo.info !70
  %u2_30fixp3 = load i32, i32* %arrayidx26.u2_30fixp, align 4, !taffo.info !70
  %18 = lshr i32 %mul25.u8_24fixp, 1, !taffo.info !178
  %19 = lshr i32 %u2_30fixp3, 1, !taffo.info !70
  %20 = ashr i32 %19, 6, !taffo.info !70
  %21 = call i32 @llvm.smul.fix.i32(i32 %18, i32 %20, i32 23), !taffo.info !179
  %mul27.u8_24fixp = shl i32 %21, 1, !taffo.info !181
  %22 = lshr i32 %mul27.u8_24fixp, 3, !taffo.info !181
  %add28.u11_21fixp = add i32 %u11_21fixp, %22, !taffo.info !182
  %arrayidx29.u11_21fixp = getelementptr inbounds i32, i32* %x.u11_21fixp, i32 %i.1, !taffo.info !68
  store i32 %add28.u11_21fixp, i32* %arrayidx29.u11_21fixp, align 4, !taffo.info !86
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond19, !llvm.loop !184

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond16, !llvm.loop !185

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !92
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !105
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39.u11_21fixp = getelementptr inbounds i32, i32* %x.u11_21fixp, i32 %i.2, !taffo.info !68
  %u11_21fixp1 = load i32, i32* %arrayidx39.u11_21fixp, align 4, !taffo.info !68
  %arrayidx40.u2_30fixp = getelementptr inbounds i32, i32* %z.u2_30fixp, i32 %i.2, !taffo.info !72
  %u2_30fixp4 = load i32, i32* %arrayidx40.u2_30fixp, align 4, !taffo.info !72
  %23 = lshr i32 %u2_30fixp4, 9, !taffo.info !72
  %add41.u11_21fixp = add i32 %u11_21fixp1, %23, !taffo.info !186
  %arrayidx42.u11_21fixp = getelementptr inbounds i32, i32* %x.u11_21fixp, i32 %i.2, !taffo.info !68
  store i32 %add41.u11_21fixp, i32* %arrayidx42.u11_21fixp, align 4, !taffo.info !86
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond36, !llvm.loop !188

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
  %arrayidx52.u21_11fixp = getelementptr inbounds i32, i32* %w.u21_11fixp, i32 %i.3, !taffo.info !65
  %u21_11fixp = load i32, i32* %arrayidx52.u21_11fixp, align 4, !taffo.info !65
  %arrayidx53.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u7_25fixp, i32 %i.3, !taffo.info !52
  %arrayidx54.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx53.u7_25fixp, i32 0, i32 %j.2, !taffo.info !52
  %u7_25fixp6 = load i32, i32* %arrayidx54.u7_25fixp, align 4, !taffo.info !52
  %24 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !47
  %25 = lshr i32 %u7_25fixp6, 1, !taffo.info !52
  %26 = ashr i32 %24, 5, !taffo.info !47
  %27 = call i32 @llvm.smul.fix.i32(i32 %26, i32 %25, i32 24), !taffo.info !189
  %mul55.u7_25fixp = shl i32 %27, 1, !taffo.info !191
  %arrayidx56.u11_21fixp = getelementptr inbounds i32, i32* %x.u11_21fixp, i32 %j.2, !taffo.info !68
  %u11_21fixp2 = load i32, i32* %arrayidx56.u11_21fixp, align 4, !taffo.info !68
  %28 = lshr i32 %mul55.u7_25fixp, 1, !taffo.info !191
  %29 = lshr i32 %u11_21fixp2, 1, !taffo.info !68
  %30 = ashr i32 %28, 11, !taffo.info !191
  %31 = ashr i32 %29, 7, !taffo.info !68
  %32 = call i32 @llvm.smul.fix.i32(i32 %30, i32 %31, i32 13), !taffo.info !192
  %mul57.u18_14fixp = shl i32 %32, 1, !taffo.info !195
  %33 = lshr i32 %mul57.u18_14fixp, 3, !taffo.info !195
  %add58.u21_11fixp = add i32 %u21_11fixp, %33, !taffo.info !197
  %arrayidx59.u21_11fixp = getelementptr inbounds i32, i32* %w.u21_11fixp, i32 %i.3, !taffo.info !65
  store i32 %add58.u21_11fixp, i32* %arrayidx59.u21_11fixp, align 4, !taffo.info !85
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond49, !llvm.loop !199

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond46, !llvm.loop !200

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5_fixp(i32 noundef %n, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !118 !taffo.funinfo !201 !taffo.sourceFunction !120 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !60
  %u4_28fixp = load i32, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !60
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !129
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !60
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !129
  %2 = ashr i32 %0, 4, !taffo.info !60
  %3 = ashr i32 %1, 3, !taffo.info !129
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 23), !taffo.info !202
  %mul.u8_24fixp = shl i32 %4, 1, !taffo.info !204
  %arrayidx1.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %i.0, !taffo.info !60
  %5 = shl i32 %mul.u8_24fixp, 4, !taffo.info !204
  store i32 %5, i32* %arrayidx1.u4_28fixp, align 4, !taffo.info !83
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !205

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.12_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u7_25fixp, i32* noundef %u1.u5_27fixp, i32* noundef %v1.u3_29fixp, i32* noundef %u2.u4_28fixp, i32* noundef %v2.u2_30fixp, i32* noundef %w.u21_11fixp, i32* noundef %x.u11_21fixp, i32* noundef %y.u2_30fixp, i32* noundef %z.u2_30fixp) #0 !taffo.initweight !206 !taffo.funinfo !158 !taffo.sourceFunction !207 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !74, !taffo.constinfo !208
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !77, !taffo.constinfo !210
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !213
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.info !214, !taffo.initweight !216
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !217, !taffo.initweight !218
  br i1 %cmp, label %for.body, label %for.end53, !taffo.info !214, !taffo.initweight !219

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !220
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !220
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !213
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !221
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !222
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %u1.u5_27fixp, i32 %i.0, !taffo.info !224
  %3 = lshr i32 %div.u1_31fixp, 4, !taffo.info !222
  store i32 %3, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !225
  %add = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !218, !taffo.constinfo !25
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !227, !taffo.constinfo !25
  %4 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !227, !taffo.constinfo !25
  %5 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !213
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !228
  %div7.u2_30fixp = shl i32 %6, 4, !taffo.info !230
  %7 = lshr i32 %div7.u2_30fixp, 1, !taffo.info !230
  %8 = shl i32 2, 29
  %9 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %8, i32 29), !taffo.info !231
  %div9.u2_30fixp = shl i32 %9, 1, !taffo.info !234, !taffo.constinfo !235
  %conv10.u1_31fixp = shl i32 %div9.u2_30fixp, 1, !taffo.info !236, !taffo.constinfo !235
  %arrayidx11.u4_28fixp = getelementptr inbounds i32, i32* %u2.u4_28fixp, i32 %i.0, !taffo.info !238
  %10 = lshr i32 %conv10.u1_31fixp, 3, !taffo.info !236, !taffo.constinfo !235
  store i32 %10, i32* %arrayidx11.u4_28fixp, align 4, !taffo.info !225
  %add12 = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !218, !taffo.constinfo !25
  %conv13.u5_27fixp = shl i32 %add12, 27, !taffo.info !227, !taffo.constinfo !25
  %11 = lshr i32 %conv13.u5_27fixp, 1, !taffo.info !227, !taffo.constinfo !25
  %12 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !213
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %11, i32 %12, i32 26), !taffo.info !228
  %div14.u2_30fixp = shl i32 %13, 4, !taffo.info !230
  %14 = lshr i32 %div14.u2_30fixp, 1, !taffo.info !230
  %15 = shl i32 4, 28
  %16 = ashr i32 %14, 1, !taffo.info !230
  %17 = call i32 @llvm.sdiv.fix.i32(i32 %16, i32 %15, i32 28), !taffo.info !239
  %div16.u2_30fixp = shl i32 %17, 2, !taffo.info !242, !taffo.constinfo !243
  %conv17.u1_31fixp = shl i32 %div16.u2_30fixp, 1, !taffo.info !246, !taffo.constinfo !243
  %arrayidx18.u3_29fixp = getelementptr inbounds i32, i32* %v1.u3_29fixp, i32 %i.0, !taffo.info !248
  %18 = lshr i32 %conv17.u1_31fixp, 2, !taffo.info !246, !taffo.constinfo !243
  store i32 %18, i32* %arrayidx18.u3_29fixp, align 4, !taffo.info !225
  %add19 = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !218, !taffo.constinfo !25
  %conv20.u5_27fixp = shl i32 %add19, 27, !taffo.info !227, !taffo.constinfo !25
  %19 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !227, !taffo.constinfo !25
  %20 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !213
  %21 = call i32 @llvm.sdiv.fix.i32(i32 %19, i32 %20, i32 26), !taffo.info !228
  %div21.u2_30fixp = shl i32 %21, 4, !taffo.info !230
  %22 = lshr i32 %div21.u2_30fixp, 1, !taffo.info !230
  %23 = shl i32 6, 28
  %24 = ashr i32 %22, 1, !taffo.info !230
  %25 = call i32 @llvm.sdiv.fix.i32(i32 %24, i32 %23, i32 28), !taffo.info !249
  %div23.u2_30fixp = shl i32 %25, 2, !taffo.info !251, !taffo.constinfo !252
  %conv24.u1_31fixp = shl i32 %div23.u2_30fixp, 1, !taffo.info !255, !taffo.constinfo !252
  %arrayidx25.u2_30fixp = getelementptr inbounds i32, i32* %v2.u2_30fixp, i32 %i.0, !taffo.info !257
  %26 = lshr i32 %conv24.u1_31fixp, 1, !taffo.info !255, !taffo.constinfo !252
  store i32 %26, i32* %arrayidx25.u2_30fixp, align 4, !taffo.info !225
  %add26 = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !218, !taffo.constinfo !25
  %conv27.u5_27fixp = shl i32 %add26, 27, !taffo.info !227, !taffo.constinfo !25
  %27 = lshr i32 %conv27.u5_27fixp, 1, !taffo.info !227, !taffo.constinfo !25
  %28 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !213
  %29 = call i32 @llvm.sdiv.fix.i32(i32 %27, i32 %28, i32 26), !taffo.info !228
  %div28.u2_30fixp = shl i32 %29, 4, !taffo.info !230
  %30 = lshr i32 %div28.u2_30fixp, 1, !taffo.info !230
  %31 = shl i32 8, 27
  %32 = ashr i32 %30, 2, !taffo.info !230
  %33 = call i32 @llvm.sdiv.fix.i32(i32 %32, i32 %31, i32 27), !taffo.info !258
  %div30.u2_30fixp = shl i32 %33, 3, !taffo.info !261, !taffo.constinfo !262
  %conv31.u1_31fixp = shl i32 %div30.u2_30fixp, 1, !taffo.info !265, !taffo.constinfo !262
  %arrayidx32.u2_30fixp = getelementptr inbounds i32, i32* %y.u2_30fixp, i32 %i.0, !taffo.info !267
  %34 = lshr i32 %conv31.u1_31fixp, 1, !taffo.info !265, !taffo.constinfo !262
  store i32 %34, i32* %arrayidx32.u2_30fixp, align 4, !taffo.info !225
  %add33 = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !218, !taffo.constinfo !25
  %conv34.u5_27fixp = shl i32 %add33, 27, !taffo.info !227, !taffo.constinfo !25
  %35 = lshr i32 %conv34.u5_27fixp, 1, !taffo.info !227, !taffo.constinfo !25
  %36 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !213
  %37 = call i32 @llvm.sdiv.fix.i32(i32 %35, i32 %36, i32 26), !taffo.info !228
  %div35.u2_30fixp = shl i32 %37, 4, !taffo.info !230
  %38 = lshr i32 %div35.u2_30fixp, 1, !taffo.info !230
  %39 = shl i32 9, 27
  %40 = ashr i32 %38, 2, !taffo.info !230
  %41 = call i32 @llvm.sdiv.fix.i32(i32 %40, i32 %39, i32 27), !taffo.info !268
  %div37.u2_30fixp = shl i32 %41, 3, !taffo.info !270, !taffo.constinfo !271
  %conv38.u1_31fixp = shl i32 %div37.u2_30fixp, 1, !taffo.info !274, !taffo.constinfo !271
  %arrayidx39.u2_30fixp = getelementptr inbounds i32, i32* %z.u2_30fixp, i32 %i.0, !taffo.info !276
  %42 = lshr i32 %conv38.u1_31fixp, 1, !taffo.info !274, !taffo.constinfo !271
  store i32 %42, i32* %arrayidx39.u2_30fixp, align 4, !taffo.info !225
  %arrayidx40.u11_21fixp = getelementptr inbounds i32, i32* %x.u11_21fixp, i32 %i.0, !taffo.info !277
  store i32 0, i32* %arrayidx40.u11_21fixp, align 4, !taffo.info !225, !taffo.constinfo !278
  %arrayidx41.u21_11fixp = getelementptr inbounds i32, i32* %w.u21_11fixp, i32 %i.0, !taffo.info !279
  store i32 0, i32* %arrayidx41.u21_11fixp, align 4, !taffo.info !225, !taffo.constinfo !278
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !214, !taffo.initweight !216
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.info !217, !taffo.initweight !218
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.info !214, !taffo.initweight !219

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !280, !taffo.initweight !218
  %rem = srem i32 %mul, %n, !taffo.info !282, !taffo.initweight !219
  %conv46.u5_27fixp = shl i32 %rem, 27, !taffo.info !284
  %conv47.u5_27fixp = shl i32 %n, 27, !taffo.info !213
  %43 = lshr i32 %conv46.u5_27fixp, 1, !taffo.info !284
  %44 = lshr i32 %conv47.u5_27fixp, 1, !taffo.info !213
  %45 = call i32 @llvm.sdiv.fix.i32(i32 %43, i32 %44, i32 26), !taffo.info !285
  %div48.u1_31fixp = shl i32 %45, 5, !taffo.info !287
  %arrayidx49.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u7_25fixp, i32 %i.0, !taffo.info !288
  %arrayidx50.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx49.u7_25fixp, i32 0, i32 %j.0, !taffo.info !288
  %46 = lshr i32 %div48.u1_31fixp, 6, !taffo.info !287
  store i32 %46, i32* %arrayidx50.u7_25fixp, align 4, !taffo.info !225
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.info !226, !taffo.initweight !218, !taffo.constinfo !25
  br label %for.cond42, !llvm.loop !289

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.info !226, !taffo.initweight !218, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !290

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.13_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u7_25fixp, i32 noundef %factor) #0 !taffo.initweight !291 !taffo.funinfo !292 !taffo.sourceFunction !293 {
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
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %0, !taffo.info !52
  %arrayidx4.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx.u7_25fixp, i32 %j.0, !taffo.info !52
  %u7_25fixp = load i32, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !52
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !129
  %1 = lshr i32 %u7_25fixp, 1, !taffo.info !52
  %2 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !129
  %3 = ashr i32 %1, 4, !taffo.info !52
  %4 = ashr i32 %2, 6, !taffo.info !129
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 20), !taffo.info !294
  %mul.u11_21fixp = shl i32 %5, 1, !taffo.info !297
  %6 = mul nsw i32 %i.0, %m, !taffo.info !107
  %arrayidx5.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %6, !taffo.info !52
  %arrayidx6.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx5.u7_25fixp, i32 %j.0, !taffo.info !52
  %7 = shl i32 %mul.u11_21fixp, 4, !taffo.info !297
  store i32 %7, i32* %arrayidx6.u7_25fixp, align 4, !taffo.info !78
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !298

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !25
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
!1 = !{double 0.000000e+00, double 0x409801FDE00D1B71}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x4138C5E840000000}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 0x4054BBBBBE878FAC}
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
!53 = !{!"fixp", i32 32, i32 25}
!54 = !{!55, !56, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 27}
!56 = !{double 0.000000e+00, double 1.520000e+01}
!57 = !{!58, !59, i1 false, i2 -1}
!58 = !{!"fixp", i32 32, i32 29}
!59 = !{double 2.000000e-01, double 4.000000e+00}
!60 = !{!61, !62, i1 false, i2 -1}
!61 = !{!"fixp", i32 32, i32 28}
!62 = !{double 4.000000e-01, double 8.000000e+00}
!63 = !{!48, !64, i1 false, i2 -1}
!64 = !{double 1.333330e-01, double 0x4005555582129457}
!65 = !{!66, !3, i1 false, i2 -1}
!66 = !{!"fixp", i32 32, i32 11}
!67 = !{!"w"}
!68 = !{!69, !1, i1 false, i2 -1}
!69 = !{!"fixp", i32 32, i32 21}
!70 = !{!48, !71, i1 false, i2 -1}
!71 = !{double 1.000000e-01, double 2.000000e+00}
!72 = !{!48, !73, i1 false, i2 -1}
!73 = !{double 0x3FB6C16DF3F96180, double 0x3FFC71C75818C5CA}
!74 = !{i1 false, !49, i1 false, i2 -1}
!75 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!76 = !{i1 false, i1 false, i1 false}
!77 = !{i1 false, !51, i1 false, i2 -1}
!78 = !{i1 false, !5, i1 false, i2 -1}
!79 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!80 = !{i1 false, !56, i1 false, i2 -1}
!81 = !{i1 false, i1 false, i1 false, i1 false}
!82 = !{i1 false, !59, i1 false, i2 -1}
!83 = !{i1 false, !62, i1 false, i2 -1}
!84 = !{i1 false, !64, i1 false, i2 -1}
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
!116 = !{double 1.600000e+01, double 1.600000e+01}
!117 = !{void (float*, i32)* @scale_scalar}
!118 = !{i32 -1, i32 2, i32 -1}
!119 = !{i32 1, !103, i32 1, !63, i32 1, !115}
!120 = !{void (i32, float*, i32)* @scale_1d}
!121 = !{!122, !116, i1 false, i2 1}
!122 = !{!"fixp", i32 32, i32 26}
!123 = !{!124, !125, i1 false, i2 -1}
!124 = !{!"fixp", i32 -32, i32 25}
!125 = !{double 0x4001110E453D20F3, double 0x4045555582129457}
!126 = !{!122, !125, i1 false, i2 -1}
!127 = distinct !{!127, !27}
!128 = !{i32 1, !103, i32 1, !54, i32 1, !115}
!129 = !{!55, !116, i1 false, i2 1}
!130 = !{!131, !132, i1 false, i2 -1}
!131 = !{!"fixp", i32 -32, i32 23}
!132 = !{double 0.000000e+00, double 2.432000e+02}
!133 = !{!134, !132, i1 false, i2 -1}
!134 = !{!"fixp", i32 32, i32 24}
!135 = distinct !{!135, !27}
!136 = !{i32 1, !103, i32 1, !65, i32 1, !115}
!137 = !{!138, !139, i1 false, i2 -1}
!138 = !{!"fixp", i32 -32, i32 6}
!139 = !{double 0.000000e+00, double 0x4178C5E840000000}
!140 = !{!141, !139, i1 false, i2 -1}
!141 = !{!"fixp", i32 32, i32 7}
!142 = distinct !{!142, !27}
!143 = !{i32 1, !103, i32 1, !57, i32 1, !115}
!144 = !{!53, !116, i1 false, i2 1}
!145 = !{!146, !147, i1 false, i2 -1}
!146 = !{!"fixp", i32 -32, i32 24}
!147 = !{double 3.200000e+00, double 6.400000e+01}
!148 = !{!53, !147, i1 false, i2 -1}
!149 = distinct !{!149, !27}
!150 = !{i32 1, !103, i32 1, !68, i32 1, !115}
!151 = !{!152, !153, i1 false, i2 -1}
!152 = !{!"fixp", i32 -32, i32 16}
!153 = !{double 0.000000e+00, double 0x40D801FDE00D1B71}
!154 = !{!155, !153, i1 false, i2 -1}
!155 = !{!"fixp", i32 32, i32 17}
!156 = distinct !{!156, !27}
!157 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!158 = !{i32 1, !103, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !57, i32 1, !60, i32 1, !63, i32 1, !65, i32 1, !68, i32 1, !70, i32 1, !72}
!159 = distinct !{null}
!160 = !{!134, !5, i1 false, i2 -1}
!161 = !{!122, !56, i1 false, i2 -1}
!162 = !{!131, !163, i1 false, i2 -1}
!163 = !{double 0.000000e+00, double 6.080000e+01}
!164 = !{!134, !163, i1 false, i2 -1}
!165 = !{!134, !166, i1 false, i2 -1}
!166 = !{double 0.000000e+00, double 0x4061F77778DD6170}
!167 = !{!55, !62, i1 false, i2 -1}
!168 = !{!169, !170, i1 false, i2 -1}
!169 = !{!"fixp", i32 -32, i32 26}
!170 = !{double 0x3FAB4E7D3B950185, double 0x4035555582129457}
!171 = !{!55, !170, i1 false, i2 -1}
!172 = !{!134, !173, i1 false, i2 -1}
!173 = !{double 0x3FAB4E7D3B950185, double 0x4064A222291FB3FB}
!174 = distinct !{!174, !27}
!175 = distinct !{!175, !27}
!176 = !{!131, !177, i1 false, i2 -1}
!177 = !{double 0.000000e+00, double 0x4058E147B16F7935}
!178 = !{!134, !177, i1 false, i2 -1}
!179 = !{!131, !180, i1 false, i2 -1}
!180 = !{double 0.000000e+00, double 0x4068E147B16F7935}
!181 = !{!134, !180, i1 false, i2 -1}
!182 = !{!69, !183, i1 false, i2 -1}
!183 = !{double 0.000000e+00, double 0x409B1E26D63B0A98}
!184 = distinct !{!184, !27}
!185 = distinct !{!185, !27}
!186 = !{!69, !187, i1 false, i2 -1}
!187 = !{double 0x3FB6C16DF3F96180, double 0x4098091A51E321A2}
!188 = distinct !{!188, !27}
!189 = !{!146, !190, i1 false, i2 -1}
!190 = !{double 0.000000e+00, double 0x405F19999DCB5782}
!191 = !{!53, !190, i1 false, i2 -1}
!192 = !{!193, !194, i1 false, i2 -1}
!193 = !{!"fixp", i32 -32, i32 13}
!194 = !{double 0.000000e+00, double 0x41075522BF4BE7EE}
!195 = !{!196, !194, i1 false, i2 -1}
!196 = !{!"fixp", i32 32, i32 14}
!197 = !{!66, !198, i1 false, i2 -1}
!198 = !{double 0.000000e+00, double 0x413BB08C97E97CFE}
!199 = distinct !{!199, !27}
!200 = distinct !{!200, !27}
!201 = !{i32 1, !103, i32 1, !60, i32 1, !115}
!202 = !{!131, !203, i1 false, i2 -1}
!203 = !{double 6.400000e+00, double 1.280000e+02}
!204 = !{!134, !203, i1 false, i2 -1}
!205 = distinct !{!205, !27}
!206 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!207 = distinct !{null}
!208 = !{!209, i1 false}
!209 = !{i1 false, !49, i1 false, i2 0}
!210 = !{!211, i1 false}
!211 = !{i1 false, !212, i1 false, i2 0}
!212 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!213 = !{!55, !104, i1 false, i2 1}
!214 = !{i1 false, !215, i1 false, i2 -1}
!215 = !{double 0.000000e+00, double 2.000000e+01}
!216 = !{i32 0}
!217 = !{i1 false, !93, i1 false, i2 -1}
!218 = !{i32 2}
!219 = !{i32 3}
!220 = !{!55, !215, i1 false, i2 -1}
!221 = !{!169, !93, i1 false, i2 1}
!222 = !{!223, !93, i1 false, i2 1}
!223 = !{!"fixp", i32 32, i32 31}
!224 = !{!55, !56, i1 false, i2 1}
!225 = !{i1 false, i1 false, i1 false, i2 1}
!226 = !{i1 false, !100, i1 false, i2 -1}
!227 = !{!55, !100, i1 false, i2 -1}
!228 = !{!169, !229, i1 false, i2 1}
!229 = !{double 5.000000e-02, double 1.050000e+00}
!230 = !{!48, !229, i1 false, i2 1}
!231 = !{!232, !233, i1 false, i2 1}
!232 = !{!"fixp", i32 -32, i32 29}
!233 = !{double 2.500000e-02, double 5.250000e-01}
!234 = !{!48, !233, i1 false, i2 1}
!235 = !{i1 false, !23}
!236 = !{!223, !237, i1 false, i2 1}
!237 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!238 = !{!61, !62, i1 false, i2 1}
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
!257 = !{!48, !64, i1 false, i2 1}
!258 = !{!259, !260, i1 false, i2 1}
!259 = !{!"fixp", i32 -32, i32 27}
!260 = !{double 6.250000e-03, double 1.312500e-01}
!261 = !{!48, !260, i1 false, i2 1}
!262 = !{i1 false, !263}
!263 = !{i1 false, !264, i1 false, i2 0}
!264 = !{double 8.000000e+00, double 8.000000e+00}
!265 = !{!223, !266, i1 false, i2 1}
!266 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!267 = !{!48, !71, i1 false, i2 1}
!268 = !{!259, !269, i1 false, i2 1}
!269 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!270 = !{!48, !269, i1 false, i2 1}
!271 = !{i1 false, !272}
!272 = !{i1 false, !273, i1 false, i2 0}
!273 = !{double 9.000000e+00, double 9.000000e+00}
!274 = !{!223, !275, i1 false, i2 1}
!275 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!276 = !{!48, !73, i1 false, i2 1}
!277 = !{!69, !1, i1 false, i2 1}
!278 = !{!107, i1 false}
!279 = !{!66, !3, i1 false, i2 1}
!280 = !{i1 false, !281, i1 false, i2 -1}
!281 = !{double 0.000000e+00, double 4.000000e+02}
!282 = !{i1 false, !283, i1 false, i2 -1}
!283 = !{double 0.000000e+00, double 1.900000e+01}
!284 = !{!55, !283, i1 false, i2 -1}
!285 = !{!169, !286, i1 false, i2 -1}
!286 = !{double 0.000000e+00, double 0x3FEE666666666666}
!287 = !{!223, !286, i1 false, i2 -1}
!288 = !{!53, !5, i1 false, i2 1}
!289 = distinct !{!289, !27}
!290 = distinct !{!290, !27}
!291 = !{i32 -1, i32 -1, i32 3, i32 -1}
!292 = !{i32 1, !103, i32 1, !103, i32 1, !52, i32 1, !115}
!293 = !{void (i32, i32, float*, i32)* @scale_2d}
!294 = !{!295, !296, i1 false, i2 -1}
!295 = !{!"fixp", i32 -32, i32 20}
!296 = !{double 0.000000e+00, double 0x4094BBBBBE878FAC}
!297 = !{!69, !296, i1 false, i2 -1}
!298 = distinct !{!298, !27}
!299 = distinct !{!299, !27}
