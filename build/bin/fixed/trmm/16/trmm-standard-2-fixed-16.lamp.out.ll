; ModuleID = './build/bin/fixed/trmm/16/trmm-standard-2-fixed-16.out.ll'
source_filename = "./sources/trmm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@B_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.7 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %A.u2_30fixp = alloca [10 x [10 x i32]], align 4, !taffo.info !45
  %B.u5_27fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !47, !taffo.target !49
  %arraydecay.u2_30fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay4.u5_27fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u5_27fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  call void @init_array.3_fixp(i32 10, i32 16, i32* %alpha.u2_30fixp, [10 x i32]* %arraydecay.u2_30fixp, [16 x i32]* %arraydecay4.u5_27fixp), !taffo.info !50, !taffo.constinfo !51
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 2), !taffo.info !50, !taffo.constinfo !52
  %arraydecay5.u2_30fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !45
  %u2_30fixp1 = bitcast [10 x i32]* %arraydecay5.u2_30fixp to i32*, !taffo.info !45
  call void @scale_2d.4_fixp(i32 10, i32 10, i32* %u2_30fixp1, i32 2), !taffo.info !53, !taffo.constinfo !54
  %arraydecay6.u5_27fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u5_27fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %u5_27fixp = bitcast [16 x i32]* %arraydecay6.u5_27fixp to i32*, !taffo.info !47, !taffo.target !49
  call void @scale_2d.5_fixp(i32 10, i32 16, i32* %u5_27fixp, i32 2), !taffo.info !55, !taffo.constinfo !54, !taffo.target !49
  call void @timer_start(), !taffo.constinfo !56
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %arraydecay7.u2_30fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay8.u5_27fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u5_27fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  call void @kernel_trmm.2_fixp(i32 10, i32 16, i32 %u2_30fixp, [10 x i32]* %arraydecay7.u2_30fixp, [16 x i32]* %arraydecay8.u5_27fixp), !taffo.info !50, !taffo.constinfo !51
  call void @timer_stop(), !taffo.constinfo !56
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !57
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !59
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !61
  %cmp10 = icmp slt i32 %j.0, 16, !taffo.info !59
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %arrayidx.u5_27fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u5_27fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %arrayidx12.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !47, !taffo.target !49
  %u5_27fixp2 = load i32, i32* %arrayidx12.u5_27fixp, align 4, !taffo.info !47, !taffo.target !49
  %0 = uitofp i32 %u5_27fixp2 to float, !taffo.info !47, !taffo.target !49
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -256
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x41A0000000000000, !taffo.info !47, !taffo.target !49
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -256
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx13 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx14, align 4, !taffo.info !55, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %j.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond9, !llvm.loop !65

for.end:                                          ; preds = %for.cond9
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !68

for.end17:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 0)), !taffo.constinfo !69
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %B) #0 !taffo.initweight !27 !taffo.funinfo !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !59
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !59
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !75
  %add = add nsw i32 %mul, %j.0, !taffo.info !75
  %rem = srem i32 %add, 20, !taffo.info !75, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !73
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !taffo.constinfo !52
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -137438953472
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !77

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !78

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !79 !taffo.funinfo !80 !taffo.sourceFunction !81 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm.2_fixp(i32 noundef %m, i32 noundef %n, i32 noundef %alpha.u2_30fixp, [10 x i32]* noundef %A.u2_30fixp, [16 x i32]* noundef %B.u5_27fixp) #0 !taffo.initweight !82 !taffo.funinfo !83 !taffo.sourceFunction !84 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21 ], !taffo.info !59
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc19, %for.inc18 ], !taffo.info !59
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %add = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ %add, %for.body3 ], [ %inc, %for.inc ], !taffo.info !85
  %cmp5 = icmp slt i32 %k.0, %m, !taffo.info !73
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u2_30fixp, i32 %k.0, !taffo.info !45
  %arrayidx7.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u2_30fixp, i32 0, i32 %i.0, !taffo.info !45
  %u2_30fixp = load i32, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !45
  %arrayidx8.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u5_27fixp, i32 %k.0, !taffo.info !47
  %arrayidx9.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx8.u5_27fixp, i32 0, i32 %j.0, !taffo.info !47
  %u5_27fixp = load i32, i32* %arrayidx9.u5_27fixp, align 4, !taffo.info !87
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !45
  %1 = lshr i32 %u5_27fixp, 1, !taffo.info !87
  %2 = ashr i32 %0, 5, !taffo.info !45
  %3 = ashr i32 %1, 2, !taffo.info !87
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 24), !taffo.info !89
  %mul.u7_25fixp = shl i32 %4, 1, !taffo.info !92
  %arrayidx10.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u5_27fixp, i32 %i.0, !taffo.info !47
  %arrayidx11.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u5_27fixp, i32 0, i32 %j.0, !taffo.info !47
  %u5_27fixp1 = load i32, i32* %arrayidx11.u5_27fixp, align 4, !taffo.info !94
  %5 = lshr i32 %u5_27fixp1, 2, !taffo.info !94
  %add12.u7_25fixp = add i32 %5, %mul.u7_25fixp, !taffo.info !95
  %6 = shl i32 %add12.u7_25fixp, 2, !taffo.info !95
  store i32 %6, i32* %arrayidx11.u5_27fixp, align 4, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !97

for.end:                                          ; preds = %for.cond4
  %arrayidx13.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u5_27fixp, i32 %i.0, !taffo.info !47
  %arrayidx14.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13.u5_27fixp, i32 0, i32 %j.0, !taffo.info !47
  %u5_27fixp2 = load i32, i32* %arrayidx14.u5_27fixp, align 4, !taffo.info !87
  %7 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %8 = lshr i32 %u5_27fixp2, 1, !taffo.info !87
  %9 = ashr i32 %7, 4, !taffo.info !42
  %10 = ashr i32 %8, 1, !taffo.info !87
  %11 = call i32 @llvm.smul.fix.i32(i32 %9, i32 %10, i32 25), !taffo.info !98
  %mul15.u6_26fixp = shl i32 %11, 1, !taffo.info !101
  %arrayidx16.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u5_27fixp, i32 %i.0, !taffo.info !47
  %arrayidx17.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx16.u5_27fixp, i32 0, i32 %j.0, !taffo.info !47
  %12 = shl i32 %mul15.u6_26fixp, 1, !taffo.info !101
  store i32 %12, i32* %arrayidx17.u5_27fixp, align 4, !taffo.info !50
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !102

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %inc22 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !103

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.3_fixp(i32 noundef %m, i32 noundef %n, i32* noundef %alpha.u2_30fixp, [10 x i32]* noundef %A.u2_30fixp, [16 x i32]* noundef %B.u5_27fixp) #0 !taffo.initweight !104 !taffo.funinfo !83 !taffo.sourceFunction !105 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !50, !taffo.constinfo !106
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.info !108, !taffo.initweight !109
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp, label %for.body, label %for.end29, !taffo.info !112, !taffo.initweight !113

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !114, !taffo.initweight !109
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !116, !taffo.initweight !113

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp slt i32 %j.0, %i.0, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp6, label %if.then, label %if.else, !taffo.info !112, !taffo.initweight !113

if.then:                                          ; preds = %for.body5
  %add = add nsw i32 %i.0, %j.0, !taffo.info !118, !taffo.initweight !111
  %rem = srem i32 %add, %m, !taffo.info !120, !taffo.initweight !113
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !122
  %conv7.u4_28fixp = shl i32 %m, 28, !taffo.info !124
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !122
  %1 = lshr i32 %conv7.u4_28fixp, 1, !taffo.info !124
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 27), !taffo.info !125
  %div.u1_31fixp = shl i32 %2, 4, !taffo.info !128
  %arrayidx.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !130
  %arrayidx8.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u2_30fixp, i32 0, i32 %j.0, !taffo.info !130
  %3 = lshr i32 %div.u1_31fixp, 1, !taffo.info !128
  store i32 %3, i32* %arrayidx8.u2_30fixp, align 4, !taffo.info !131
  br label %if.end

if.else:                                          ; preds = %for.body5
  %arrayidx9.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !130
  %arrayidx10.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx9.u2_30fixp, i32 0, i32 %j.0, !taffo.info !130
  store i32 0, i32* %arrayidx10.u2_30fixp, align 4, !taffo.info !131, !taffo.constinfo !132
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !133, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !135

for.end:                                          ; preds = %for.cond3
  %arrayidx11.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !130
  %arrayidx12.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u2_30fixp, i32 0, i32 %i.0, !taffo.info !130
  store i32 1073741824, i32* %arrayidx12.u2_30fixp, align 4, !taffo.info !131, !taffo.constinfo !136
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.info !114, !taffo.initweight !109
  %cmp14 = icmp slt i32 %j.1, %n, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.info !116, !taffo.initweight !113

for.body16:                                       ; preds = %for.cond13
  %sub = sub nsw i32 %i.0, %j.1, !taffo.info !137, !taffo.initweight !111
  %add17 = add nsw i32 %n, %sub, !taffo.info !118, !taffo.initweight !113
  %rem18 = srem i32 %add17, %n, !taffo.info !139, !taffo.initweight !141
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !142
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !143
  %4 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !142
  %5 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !143
  %6 = ashr i32 %4, 1, !taffo.info !142
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %6, i32 %5, i32 26), !taffo.info !144
  %div21.u1_31fixp = shl i32 %7, 5, !taffo.info !147
  %arrayidx22.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u5_27fixp, i32 %i.0, !taffo.info !148
  %arrayidx23.u5_27fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u5_27fixp, i32 0, i32 %j.1, !taffo.info !148
  %8 = lshr i32 %div21.u1_31fixp, 4, !taffo.info !147
  store i32 %8, i32* %arrayidx23.u5_27fixp, align 4, !taffo.info !131
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !133, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond13, !llvm.loop !149

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.0, 1, !taffo.info !150, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !151

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !152 !taffo.funinfo !153 !taffo.sourceFunction !154 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !59
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !59
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %0, !taffo.info !45
  %arrayidx4.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx.u2_30fixp, i32 %j.0, !taffo.info !45
  %u2_30fixp = load i32, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !155
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !157
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !155
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !157
  %3 = ashr i32 %1, 1, !taffo.info !155
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 28), !taffo.info !158
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !161
  %5 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %5, !taffo.info !45
  %arrayidx6.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx5.u2_30fixp, i32 %j.0, !taffo.info !45
  %6 = shl i32 %mul.u3_29fixp, 1, !taffo.info !161
  store i32 %6, i32* %arrayidx6.u2_30fixp, align 4, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !162

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !163

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !152 !taffo.funinfo !164 !taffo.sourceFunction !154 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !59
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !59
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %0, !taffo.info !47
  %arrayidx4.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx.u5_27fixp, i32 %j.0, !taffo.info !47
  %u5_27fixp = load i32, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !87
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !165
  %1 = lshr i32 %u5_27fixp, 1, !taffo.info !87
  %2 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !165
  %3 = ashr i32 %1, 1, !taffo.info !87
  %4 = ashr i32 %2, 4, !taffo.info !165
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 25), !taffo.info !166
  %mul.u6_26fixp = shl i32 %5, 1, !taffo.info !167
  %6 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %6, !taffo.info !47
  %arrayidx6.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx5.u5_27fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %mul.u6_26fixp, 1, !taffo.info !167
  store i32 %7, i32* %arrayidx6.u5_27fixp, align 4, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !168

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !169

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
!1 = !{double 0.000000e+00, double 2.193750e+01}
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
!26 = distinct !{null}
!27 = !{i32 -1, i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = distinct !{null, null}
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
!46 = !{double 0.000000e+00, double 2.000000e+00}
!47 = !{!48, !1, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 27}
!49 = !{!"B"}
!50 = !{i1 false, !44, i1 false, i2 -1}
!51 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!52 = !{i1 false, i1 false, i1 false}
!53 = !{i1 false, !46, i1 false, i2 -1}
!54 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!55 = !{i1 false, !1, i1 false, i2 -1}
!56 = !{i1 false}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0.000000e+00, double 1.100000e+01}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 1.000000e+00}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0.000000e+00, double 1.870000e+02}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 1.870000e+02}
!65 = distinct !{!65, !23}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 1.100000e+01}
!68 = distinct !{!68, !23}
!69 = !{i1 false, i1 false, i1 false, i1 false}
!70 = !{i32 1, !16, i32 1, !71, i32 1, !0}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.600000e+01, double 1.600000e+01}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 0.000000e+00}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !23}
!79 = !{i32 1, i32 -1}
!80 = !{i32 1, !42, i32 1, !19}
!81 = !{void (float*, i32)* @scale_scalar}
!82 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2}
!83 = !{i32 1, !16, i32 1, !71, i32 1, !42, i32 1, !45, i32 1, !47}
!84 = distinct !{null}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 1.000000e+00, double 2.000000e+00}
!87 = !{!88, !1, i1 false, i2 -1}
!88 = !{!"fixp", i32 32, i32 26}
!89 = !{!90, !91, i1 false, i2 -1}
!90 = !{!"fixp", i32 -32, i32 24}
!91 = !{double 0.000000e+00, double 4.387500e+01}
!92 = !{!93, !91, i1 false, i2 -1}
!93 = !{!"fixp", i32 32, i32 25}
!94 = !{!93, !1, i1 false, i2 -1}
!95 = !{!93, !96, i1 false, i2 -1}
!96 = !{double 0.000000e+00, double 6.581250e+01}
!97 = distinct !{!97, !23}
!98 = !{!99, !100, i1 false, i2 -1}
!99 = !{!"fixp", i32 -32, i32 25}
!100 = !{double 0.000000e+00, double 0x4040740000000000}
!101 = !{!88, !100, i1 false, i2 -1}
!102 = distinct !{!102, !23}
!103 = distinct !{!103, !23}
!104 = !{i32 -1, i32 -1, i32 1, i32 2, i32 2}
!105 = distinct !{null}
!106 = !{!107, i1 false}
!107 = !{i1 false, !44, i1 false, i2 0}
!108 = !{i1 false, !58, i1 false, i2 1}
!109 = !{i32 0}
!110 = !{i1 false, !60, i1 false, i2 1}
!111 = !{i32 2}
!112 = !{i1 false, !3, i1 false, i2 1}
!113 = !{i32 3}
!114 = !{i1 false, !115, i1 false, i2 1}
!115 = !{double 0.000000e+00, double 1.700000e+01}
!116 = !{i1 false, !117, i1 false, i2 1}
!117 = !{double 0.000000e+00, double 1.600000e+01}
!118 = !{i1 false, !119, i1 false, i2 1}
!119 = !{double 0.000000e+00, double 2.600000e+01}
!120 = !{i1 false, !121, i1 false, i2 1}
!121 = !{double 0.000000e+00, double 9.000000e+00}
!122 = !{!123, !121, i1 false, i2 1}
!123 = !{!"fixp", i32 32, i32 28}
!124 = !{!123, !17, i1 false, i2 1}
!125 = !{!126, !127, i1 false, i2 1}
!126 = !{!"fixp", i32 -32, i32 27}
!127 = !{double 0.000000e+00, double 9.000000e-01}
!128 = !{!129, !127, i1 false, i2 1}
!129 = !{!"fixp", i32 32, i32 31}
!130 = !{!43, !46, i1 false, i2 1}
!131 = !{i1 false, i1 false, i1 false, i2 1}
!132 = !{!75, i1 false}
!133 = !{i1 false, !134, i1 false, i2 1}
!134 = !{double 1.000000e+00, double 1.700000e+01}
!135 = distinct !{!135, !23}
!136 = !{!73, i1 false}
!137 = !{i1 false, !138, i1 false, i2 1}
!138 = !{double -1.600000e+01, double 1.000000e+01}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 0.000000e+00, double 1.500000e+01}
!141 = !{i32 4}
!142 = !{!123, !140, i1 false, i2 1}
!143 = !{!48, !72, i1 false, i2 1}
!144 = !{!145, !146, i1 false, i2 1}
!145 = !{!"fixp", i32 -32, i32 26}
!146 = !{double 0.000000e+00, double 9.375000e-01}
!147 = !{!129, !146, i1 false, i2 1}
!148 = !{!48, !1, i1 false, i2 1}
!149 = distinct !{!149, !23}
!150 = !{i1 false, !67, i1 false, i2 1}
!151 = distinct !{!151, !23}
!152 = !{i32 -1, i32 -1, i32 3, i32 -1}
!153 = !{i32 1, !16, i32 1, !16, i32 1, !45, i32 1, !19}
!154 = !{void (i32, i32, float*, i32)* @scale_2d}
!155 = !{!156, !46, i1 false, i2 -1}
!156 = !{!"fixp", i32 32, i32 29}
!157 = !{!156, !20, i1 false, i2 1}
!158 = !{!159, !160, i1 false, i2 -1}
!159 = !{!"fixp", i32 -32, i32 28}
!160 = !{double 0.000000e+00, double 4.000000e+00}
!161 = !{!156, !160, i1 false, i2 -1}
!162 = distinct !{!162, !23}
!163 = distinct !{!163, !23}
!164 = !{i32 1, !16, i32 1, !71, i32 1, !47, i32 1, !19}
!165 = !{!43, !20, i1 false, i2 1}
!166 = !{!99, !91, i1 false, i2 -1}
!167 = !{!88, !91, i1 false, i2 -1}
!168 = distinct !{!168, !23}
!169 = distinct !{!169, !23}
