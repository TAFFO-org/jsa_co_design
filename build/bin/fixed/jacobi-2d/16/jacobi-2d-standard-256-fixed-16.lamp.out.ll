; ModuleID = './build/bin/fixed/jacobi-2d/16/jacobi-2d-standard-256-fixed-16.out.ll'
source_filename = "./sources/jacobi-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [15 x [15 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 {
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
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.equivalentChild !31 {
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
  br label %for.cond1, !llvm.loop !32

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !33

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !34 !taffo.funinfo !35 {
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
  br label %for.cond4, !llvm.loop !36

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !37

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !38

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !40 {
entry:
  %A.u12_20fixp = alloca [15 x [15 x i32]], align 4, !taffo.info !41, !taffo.target !44
  %B.u13_19fixp = alloca [15 x [15 x i32]], align 4, !taffo.info !45
  %arraydecay.u12_20fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %A.u12_20fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %arraydecay3.u13_19fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %B.u13_19fixp, i32 0, i32 0, !taffo.info !45
  call void @init_array.2_fixp(i32 15, [15 x i32]* %arraydecay.u12_20fixp, [15 x i32]* %arraydecay3.u13_19fixp), !taffo.info !48, !taffo.constinfo !49, !taffo.target !44
  %arraydecay4.u12_20fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %A.u12_20fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %u12_20fixp = bitcast [15 x i32]* %arraydecay4.u12_20fixp to i32*, !taffo.info !41, !taffo.target !44
  call void @scale_2d.3_fixp(i32 15, i32 15, i32* %u12_20fixp, i32 256), !taffo.info !48, !taffo.constinfo !50, !taffo.target !44
  %arraydecay5.u13_19fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %B.u13_19fixp, i32 0, i32 0, !taffo.info !45
  %u13_19fixp = bitcast [15 x i32]* %arraydecay5.u13_19fixp to i32*, !taffo.info !45
  call void @scale_2d.4_fixp(i32 15, i32 15, i32* %u13_19fixp, i32 256), !taffo.info !51, !taffo.constinfo !50
  call void @timer_start(), !taffo.constinfo !52
  %arraydecay6.u12_20fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %A.u12_20fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %arraydecay7.u13_19fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %B.u13_19fixp, i32 0, i32 0, !taffo.info !45
  call void @kernel_jacobi_2d.1_fixp(i32 10, i32 15, [15 x i32]* %arraydecay6.u12_20fixp, [15 x i32]* %arraydecay7.u13_19fixp), !taffo.info !48, !taffo.constinfo !50, !taffo.target !44
  call void @timer_stop(), !taffo.constinfo !52
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14 ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !55
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !57
  %cmp9 = icmp slt i32 %j.0, 15, !taffo.info !55
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %arrayidx.u12_20fixp = getelementptr inbounds [15 x [15 x i32]], [15 x [15 x i32]]* %A.u12_20fixp, i32 0, i32 %i.0, !taffo.info !41, !taffo.target !44
  %arrayidx11.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx.u12_20fixp, i32 0, i32 %j.0, !taffo.info !41, !taffo.target !44
  %u12_20fixp1 = load i32, i32* %arrayidx11.u12_20fixp, align 4, !taffo.info !41, !taffo.target !44
  %0 = uitofp i32 %u12_20fixp1 to float, !taffo.info !41, !taffo.target !44
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -256
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4130000000000000, !taffo.info !41, !taffo.target !44
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -256
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx12 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx13 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx13, align 4, !taffo.info !48, !taffo.target !44
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %j.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !61

for.end:                                          ; preds = %for.cond8
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !64

for.end16:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 15, [15 x float]* noundef getelementptr inbounds ([15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !65
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [15 x float]* noundef %A) #0 !taffo.initweight !24 !taffo.funinfo !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !55
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !69
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !71
  %add = add nsw i32 %mul, %j.0, !taffo.info !71
  %rem = srem i32 %add, 20, !taffo.info !71, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !69
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !65
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -137438953472
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !49
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !73

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !74

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d.1_fixp(i32 noundef %tsteps, i32 noundef %n, [15 x i32]* noundef %A.u12_20fixp, [15 x i32]* noundef %B.u13_19fixp) #0 !taffo.initweight !75 !taffo.funinfo !76 !taffo.sourceFunction !77 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc65, %for.inc64 ], !taffo.info !55
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc27, %for.inc26 ], !taffo.info !78
  %sub = sub nsw i32 %n, 1, !taffo.info !80, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !69
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc, %for.inc ], !taffo.info !78
  %sub5 = sub nsw i32 %n, 1, !taffo.info !80, !taffo.constinfo !21
  %cmp6 = icmp slt i32 %j.0, %sub5, !taffo.info !69
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %arrayidx.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u12_20fixp, i32 %i.0, !taffo.info !41
  %arrayidx8.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx.u12_20fixp, i32 0, i32 %j.0, !taffo.info !41
  %u12_20fixp = load i32, i32* %arrayidx8.u12_20fixp, align 4, !taffo.info !82
  %arrayidx9.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u12_20fixp, i32 %i.0, !taffo.info !41
  %sub10 = sub nsw i32 %j.0, 1, !taffo.info !71, !taffo.constinfo !21
  %arrayidx11.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx9.u12_20fixp, i32 0, i32 %sub10, !taffo.info !41
  %u12_20fixp1 = load i32, i32* %arrayidx11.u12_20fixp, align 4, !taffo.info !82
  %0 = lshr i32 %u12_20fixp, 2, !taffo.info !82
  %1 = lshr i32 %u12_20fixp1, 2, !taffo.info !82
  %add.u14_18fixp = add i32 %0, %1, !taffo.info !83
  %arrayidx12.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u12_20fixp, i32 %i.0, !taffo.info !41
  %add13 = add nsw i32 1, %j.0, !taffo.info !19, !taffo.constinfo !21
  %arrayidx14.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx12.u12_20fixp, i32 0, i32 %add13, !taffo.info !41
  %u12_20fixp2 = load i32, i32* %arrayidx14.u12_20fixp, align 4, !taffo.info !86
  %2 = lshr i32 %u12_20fixp2, 2, !taffo.info !86
  %add15.u14_18fixp = add i32 %add.u14_18fixp, %2, !taffo.info !87
  %add16 = add nsw i32 1, %i.0, !taffo.info !19, !taffo.constinfo !21
  %arrayidx17.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u12_20fixp, i32 %add16, !taffo.info !41
  %arrayidx18.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx17.u12_20fixp, i32 0, i32 %j.0, !taffo.info !41
  %u12_20fixp3 = load i32, i32* %arrayidx18.u12_20fixp, align 4, !taffo.info !86
  %3 = lshr i32 %add15.u14_18fixp, 1, !taffo.info !87
  %4 = lshr i32 %u12_20fixp3, 3, !taffo.info !86
  %add19.u15_17fixp = add i32 %3, %4, !taffo.info !89
  %sub20 = sub nsw i32 %i.0, 1, !taffo.info !71, !taffo.constinfo !21
  %arrayidx21.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u12_20fixp, i32 %sub20, !taffo.info !41
  %arrayidx22.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx21.u12_20fixp, i32 0, i32 %j.0, !taffo.info !41
  %u12_20fixp4 = load i32, i32* %arrayidx22.u12_20fixp, align 4, !taffo.info !41
  %5 = lshr i32 %u12_20fixp4, 3, !taffo.info !41
  %add23.u15_17fixp = add i32 %add19.u15_17fixp, %5, !taffo.info !92
  %6 = lshr i32 13421773, 1
  %7 = lshr i32 %add23.u15_17fixp, 1, !taffo.info !92
  %8 = ashr i32 %6, 9
  %9 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %7, i32 16), !taffo.info !94
  %mul.u12_20fixp = shl i32 %9, 4, !taffo.info !97, !taffo.constinfo !98
  %arrayidx24.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u13_19fixp, i32 %i.0, !taffo.info !45
  %arrayidx25.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx24.u13_19fixp, i32 0, i32 %j.0, !taffo.info !45
  %10 = lshr i32 %mul.u12_20fixp, 1, !taffo.info !97, !taffo.constinfo !98
  store i32 %10, i32* %arrayidx25.u13_19fixp, align 4, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !101

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %inc27 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !102

for.end28:                                        ; preds = %for.cond1
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc61, %for.end28
  %i.1 = phi i32 [ 1, %for.end28 ], [ %inc62, %for.inc61 ], !taffo.info !78
  %sub30 = sub nsw i32 %n, 1, !taffo.info !80, !taffo.constinfo !21
  %cmp31 = icmp slt i32 %i.1, %sub30, !taffo.info !69
  br i1 %cmp31, label %for.body32, label %for.end63

for.body32:                                       ; preds = %for.cond29
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.body32
  %j.1 = phi i32 [ 1, %for.body32 ], [ %inc59, %for.inc58 ], !taffo.info !78
  %sub34 = sub nsw i32 %n, 1, !taffo.info !80, !taffo.constinfo !21
  %cmp35 = icmp slt i32 %j.1, %sub34, !taffo.info !69
  br i1 %cmp35, label %for.body36, label %for.end60

for.body36:                                       ; preds = %for.cond33
  %arrayidx37.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u13_19fixp, i32 %i.1, !taffo.info !45
  %arrayidx38.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx37.u13_19fixp, i32 0, i32 %j.1, !taffo.info !45
  %u13_19fixp = load i32, i32* %arrayidx38.u13_19fixp, align 4, !taffo.info !103
  %arrayidx39.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u13_19fixp, i32 %i.1, !taffo.info !45
  %sub40 = sub nsw i32 %j.1, 1, !taffo.info !71, !taffo.constinfo !21
  %arrayidx41.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx39.u13_19fixp, i32 0, i32 %sub40, !taffo.info !45
  %u13_19fixp5 = load i32, i32* %arrayidx41.u13_19fixp, align 4, !taffo.info !103
  %11 = lshr i32 %u13_19fixp, 1, !taffo.info !103
  %12 = lshr i32 %u13_19fixp5, 1, !taffo.info !103
  %add42.u14_18fixp = add i32 %11, %12, !taffo.info !104
  %arrayidx43.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u13_19fixp, i32 %i.1, !taffo.info !45
  %add44 = add nsw i32 1, %j.1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx45.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx43.u13_19fixp, i32 0, i32 %add44, !taffo.info !45
  %u13_19fixp6 = load i32, i32* %arrayidx45.u13_19fixp, align 4, !taffo.info !103
  %13 = lshr i32 %add42.u14_18fixp, 1, !taffo.info !104
  %14 = lshr i32 %u13_19fixp6, 2, !taffo.info !103
  %add46.u15_17fixp = add i32 %13, %14, !taffo.info !106
  %add47 = add nsw i32 1, %i.1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx48.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u13_19fixp, i32 %add47, !taffo.info !45
  %arrayidx49.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx48.u13_19fixp, i32 0, i32 %j.1, !taffo.info !45
  %u13_19fixp7 = load i32, i32* %arrayidx49.u13_19fixp, align 4, !taffo.info !108
  %15 = lshr i32 %u13_19fixp7, 2, !taffo.info !108
  %add50.u15_17fixp = add i32 %add46.u15_17fixp, %15, !taffo.info !109
  %sub51 = sub nsw i32 %i.1, 1, !taffo.info !71, !taffo.constinfo !21
  %arrayidx52.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u13_19fixp, i32 %sub51, !taffo.info !45
  %arrayidx53.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx52.u13_19fixp, i32 0, i32 %j.1, !taffo.info !45
  %u13_19fixp8 = load i32, i32* %arrayidx53.u13_19fixp, align 4, !taffo.info !108
  %16 = lshr i32 %u13_19fixp8, 2, !taffo.info !108
  %add54.u15_17fixp = add i32 %add50.u15_17fixp, %16, !taffo.info !111
  %17 = lshr i32 13421773, 1
  %18 = lshr i32 %add54.u15_17fixp, 1, !taffo.info !111
  %19 = ashr i32 %17, 9
  %20 = call i32 @llvm.smul.fix.i32(i32 %19, i32 %18, i32 16), !taffo.info !113
  %mul55.u15_17fixp = shl i32 %20, 1, !taffo.info !115, !taffo.constinfo !98
  %arrayidx56.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u12_20fixp, i32 %i.1, !taffo.info !41
  %arrayidx57.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx56.u12_20fixp, i32 0, i32 %j.1, !taffo.info !41
  %21 = shl i32 %mul55.u15_17fixp, 3, !taffo.info !115, !taffo.constinfo !98
  store i32 %21, i32* %arrayidx57.u12_20fixp, align 4, !taffo.info !48
  br label %for.inc58

for.inc58:                                        ; preds = %for.body36
  %inc59 = add nsw i32 %j.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !116

for.end60:                                        ; preds = %for.cond33
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond29, !llvm.loop !117

for.end63:                                        ; preds = %for.cond29
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %inc65 = add nsw i32 %t.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !118

for.end66:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, [15 x i32]* noundef %A.u12_20fixp, [15 x i32]* noundef %B.u13_19fixp) #0 !taffo.initweight !119 !taffo.funinfo !120 !taffo.sourceFunction !121 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc20, %for.inc19 ], !taffo.info !122, !taffo.initweight !124
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !125, !taffo.initweight !126
  br i1 %cmp, label %for.body, label %for.end21, !taffo.info !122, !taffo.initweight !127

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !122, !taffo.initweight !124
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !125, !taffo.initweight !126
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !122, !taffo.initweight !127

for.body5:                                        ; preds = %for.cond3
  %conv.s5_27fixp = shl i32 %i.0, 27, !taffo.info !128
  %add = add nsw i32 %j.0, 2, !taffo.info !130, !taffo.initweight !126, !taffo.constinfo !21
  %conv6.s6_26fixp = shl i32 %add, 26, !taffo.info !132, !taffo.constinfo !21
  %0 = ashr i32 %conv.s5_27fixp, 5, !taffo.info !128
  %1 = ashr i32 %conv6.s6_26fixp, 4, !taffo.info !132, !taffo.constinfo !21
  %mul.s10_22fixp = call i32 @llvm.smul.fix.i32(i32 %0, i32 %1, i32 22), !taffo.info !134
  %2 = lshr i32 -2147483648, 8
  %add7.s10_22fixp = add i32 %mul.s10_22fixp, %2, !taffo.info !137, !taffo.constinfo !139
  %conv8.u4_28fixp = shl i32 %n, 28, !taffo.info !140
  %3 = lshr i32 %conv8.u4_28fixp, 1, !taffo.info !140
  %4 = ashr i32 %3, 5, !taffo.info !140
  %5 = call i32 @llvm.sdiv.fix.i32(i32 %add7.s10_22fixp, i32 %4, i32 22), !taffo.info !142
  %div.s6_26fixp = shl i32 %5, 4, !taffo.info !144
  %arrayidx.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u12_20fixp, i32 %i.0, !taffo.info !145
  %arrayidx9.u12_20fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx.u12_20fixp, i32 0, i32 %j.0, !taffo.info !145
  %6 = ashr i32 %div.s6_26fixp, 6, !taffo.info !144
  store i32 %6, i32* %arrayidx9.u12_20fixp, align 4, !taffo.info !146
  %conv10.s5_27fixp = shl i32 %i.0, 27, !taffo.info !128
  %add11 = add nsw i32 %j.0, 3, !taffo.info !147, !taffo.initweight !126, !taffo.constinfo !21
  %conv12.s6_26fixp = shl i32 %add11, 26, !taffo.info !149, !taffo.constinfo !21
  %7 = ashr i32 %conv10.s5_27fixp, 5, !taffo.info !128
  %8 = ashr i32 %conv12.s6_26fixp, 4, !taffo.info !149, !taffo.constinfo !21
  %mul13.s10_22fixp = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 22), !taffo.info !150
  %9 = lshr i32 -1073741824, 8
  %add14.s10_22fixp = add i32 %mul13.s10_22fixp, %9, !taffo.info !152, !taffo.constinfo !154
  %conv15.u4_28fixp = shl i32 %n, 28, !taffo.info !140
  %10 = lshr i32 %conv15.u4_28fixp, 1, !taffo.info !140
  %11 = ashr i32 %10, 5, !taffo.info !140
  %12 = call i32 @llvm.sdiv.fix.i32(i32 %add14.s10_22fixp, i32 %11, i32 22), !taffo.info !157
  %div16.s6_26fixp = shl i32 %12, 4, !taffo.info !159
  %arrayidx17.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u13_19fixp, i32 %i.0, !taffo.info !160
  %arrayidx18.u13_19fixp = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx17.u13_19fixp, i32 0, i32 %j.0, !taffo.info !160
  %13 = ashr i32 %div16.s6_26fixp, 7, !taffo.info !159
  store i32 %13, i32* %arrayidx18.u13_19fixp, align 4, !taffo.info !146
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !161, !taffo.initweight !126, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !163

for.end:                                          ; preds = %for.cond3
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %i.0, 1, !taffo.info !161, !taffo.initweight !126, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !164

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u12_20fixp, i32 noundef %factor) #0 !taffo.initweight !165 !taffo.funinfo !166 !taffo.sourceFunction !169 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !55
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !69
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !71
  %arrayidx.u12_20fixp = getelementptr inbounds i32, i32* %val.u12_20fixp, i32 %0, !taffo.info !41
  %arrayidx4.u12_20fixp = getelementptr inbounds i32, i32* %arrayidx.u12_20fixp, i32 %j.0, !taffo.info !41
  %u12_20fixp = load i32, i32* %arrayidx4.u12_20fixp, align 4, !taffo.info !41
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !170
  %1 = lshr i32 %u12_20fixp, 1, !taffo.info !41
  %2 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !170
  %3 = ashr i32 %1, 8, !taffo.info !41
  %4 = ashr i32 %2, 11, !taffo.info !170
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 11), !taffo.info !172
  %mul.u20_12fixp = shl i32 %5, 1, !taffo.info !175
  %6 = mul nsw i32 %i.0, %m, !taffo.info !71
  %arrayidx5.u12_20fixp = getelementptr inbounds i32, i32* %val.u12_20fixp, i32 %6, !taffo.info !41
  %arrayidx6.u12_20fixp = getelementptr inbounds i32, i32* %arrayidx5.u12_20fixp, i32 %j.0, !taffo.info !41
  %7 = shl i32 %mul.u20_12fixp, 8, !taffo.info !175
  store i32 %7, i32* %arrayidx6.u12_20fixp, align 4, !taffo.info !48
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !177

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !178

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u13_19fixp, i32 noundef %factor) #0 !taffo.initweight !165 !taffo.funinfo !179 !taffo.sourceFunction !169 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !55
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !69
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !71
  %arrayidx.u13_19fixp = getelementptr inbounds i32, i32* %val.u13_19fixp, i32 %0, !taffo.info !45
  %arrayidx4.u13_19fixp = getelementptr inbounds i32, i32* %arrayidx.u13_19fixp, i32 %j.0, !taffo.info !45
  %u13_19fixp = load i32, i32* %arrayidx4.u13_19fixp, align 4, !taffo.info !45
  %conv.u9_23fixp = shl i32 %factor, 23, !taffo.info !170
  %1 = lshr i32 %u13_19fixp, 1, !taffo.info !45
  %2 = lshr i32 %conv.u9_23fixp, 1, !taffo.info !170
  %3 = ashr i32 %1, 8, !taffo.info !45
  %4 = ashr i32 %2, 12, !taffo.info !170
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 10), !taffo.info !180
  %mul.u21_11fixp = shl i32 %5, 1, !taffo.info !183
  %6 = mul nsw i32 %i.0, %m, !taffo.info !71
  %arrayidx5.u13_19fixp = getelementptr inbounds i32, i32* %val.u13_19fixp, i32 %6, !taffo.info !45
  %arrayidx6.u13_19fixp = getelementptr inbounds i32, i32* %arrayidx5.u13_19fixp, i32 %j.0, !taffo.info !45
  %7 = shl i32 %mul.u21_11fixp, 8, !taffo.info !183
  store i32 %7, i32* %arrayidx6.u13_19fixp, align 4, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !185

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !186

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
!1 = !{double 0.000000e+00, double 0x40AE22221FF2E48F}
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
!12 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
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
!26 = !{i32 -1, i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!28 = distinct !{!28, !23}
!29 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!31 = distinct !{null, null}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!35 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = !{}
!40 = !{i1 true}
!41 = !{!42, !43, i1 false, i2 -1}
!42 = !{!"fixp", i32 32, i32 20}
!43 = !{double 0x404111111F0C34C2, double 0x40AE22221FF2E48F}
!44 = !{!"A"}
!45 = !{!46, !47, i1 false, i2 -1}
!46 = !{!"fixp", i32 32, i32 19}
!47 = !{double 0x40499999A1FD156A, double 0x40B011112007DD44}
!48 = !{i1 false, !43, i1 false, i2 -1}
!49 = !{i1 false, i1 false, i1 false, i1 false}
!50 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!51 = !{i1 false, !47, i1 false, i2 -1}
!52 = !{i1 false}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 1.600000e+01}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 0.000000e+00, double 1.000000e+00}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0.000000e+00, double 2.560000e+02}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 2.560000e+02}
!61 = distinct !{!61, !23}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 1.600000e+01}
!64 = distinct !{!64, !23}
!65 = !{i1 false, i1 false, i1 false}
!66 = !{i32 1, !67, i32 1, !0}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.500000e+01, double 1.500000e+01}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 1.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 0.000000e+00}
!73 = distinct !{!73, !23}
!74 = distinct !{!74, !23}
!75 = !{i32 -1, i32 -1, i32 2, i32 2}
!76 = !{i32 1, !16, i32 1, !67, i32 1, !41, i32 1, !45}
!77 = distinct !{null}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 2.000000e+00}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.400000e+01, double 1.400000e+01}
!82 = !{!46, !43, i1 false, i2 -1}
!83 = !{!84, !85, i1 false, i2 -1}
!84 = !{!"fixp", i32 32, i32 18}
!85 = !{double 0x405111111F0C34C2, double 0x40BE22221FF2E48F}
!86 = !{!84, !43, i1 false, i2 -1}
!87 = !{!84, !88, i1 false, i2 -1}
!88 = !{double 0x40599999AE924F23, double 0x40C6999997F62B6B}
!89 = !{!90, !91, i1 false, i2 -1}
!90 = !{!"fixp", i32 32, i32 17}
!91 = !{double 0x406111111F0C34C2, double 0x40CE22221FF2E48F}
!92 = !{!90, !93, i1 false, i2 -1}
!93 = !{double 0x4065555566CF41F2, double 0x40D2D55553F7CED9}
!94 = !{!95, !96, i1 false, i2 -1}
!95 = !{!"fixp", i32 -32, i32 16}
!96 = !{double 0x4041111123507909, double 0x40AE2222277B6D16}
!97 = !{!42, !96, i1 false, i2 -1}
!98 = !{!99, i1 false}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 0x3FC99999A0000000, double 0x3FC99999A0000000}
!101 = distinct !{!101, !23}
!102 = distinct !{!102, !23}
!103 = !{!84, !47, i1 false, i2 -1}
!104 = !{!84, !105, i1 false, i2 -1}
!105 = !{double 0x40599999A1FD156A, double 0x40C011112007DD44}
!106 = !{!90, !107, i1 false, i2 -1}
!107 = !{double 0x40633333397DD010, double 0x40C81999B00BCBE6}
!108 = !{!90, !47, i1 false, i2 -1}
!109 = !{!90, !110, i1 false, i2 -1}
!110 = !{double 0x40699999A1FD156A, double 0x40D011112007DD44}
!111 = !{!90, !112, i1 false, i2 -1}
!112 = !{double 0x40700000053E2D62, double 0x40D415556809D495}
!113 = !{!95, !114, i1 false, i2 -1}
!114 = !{double 0x40499999A8637BD2, double 0x40B01111240C218C}
!115 = !{!90, !114, i1 false, i2 -1}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
!118 = distinct !{!118, !23}
!119 = !{i32 -1, i32 2, i32 2}
!120 = !{i32 1, !67, i32 1, !41, i32 1, !45}
!121 = distinct !{null}
!122 = !{i1 false, !123, i1 false, i2 -1}
!123 = !{double -1.500000e+01, double 1.500000e+01}
!124 = !{i32 0}
!125 = !{i1 false, !56, i1 false, i2 -1}
!126 = !{i32 2}
!127 = !{i32 3}
!128 = !{!129, !123, i1 false, i2 -1}
!129 = !{!"fixp", i32 -32, i32 27}
!130 = !{i1 false, !131, i1 false, i2 -1}
!131 = !{double -1.300000e+01, double 1.700000e+01}
!132 = !{!133, !131, i1 false, i2 -1}
!133 = !{!"fixp", i32 -32, i32 26}
!134 = !{!135, !136, i1 false, i2 -1}
!135 = !{!"fixp", i32 -32, i32 22}
!136 = !{double -2.550000e+02, double 2.550000e+02}
!137 = !{!135, !138, i1 false, i2 -1}
!138 = !{double -2.530000e+02, double 2.570000e+02}
!139 = !{i1 false, !19}
!140 = !{!141, !68, i1 false, i2 1}
!141 = !{!"fixp", i32 32, i32 28}
!142 = !{!135, !143, i1 false, i2 -1}
!143 = !{double 0xC030DDDDDDDDDDDE, double 0x4031222222222222}
!144 = !{!133, !143, i1 false, i2 -1}
!145 = !{!42, !43, i1 false, i2 1}
!146 = !{i1 false, i1 false, i1 false, i2 1}
!147 = !{i1 false, !148, i1 false, i2 -1}
!148 = !{double -1.200000e+01, double 1.800000e+01}
!149 = !{!133, !148, i1 false, i2 -1}
!150 = !{!135, !151, i1 false, i2 -1}
!151 = !{double -2.700000e+02, double 2.700000e+02}
!152 = !{!135, !153, i1 false, i2 -1}
!153 = !{double -2.670000e+02, double 2.730000e+02}
!154 = !{i1 false, !155}
!155 = !{i1 false, !156, i1 false, i2 0}
!156 = !{double 3.000000e+00, double 3.000000e+00}
!157 = !{!135, !158, i1 false, i2 -1}
!158 = !{double -1.780000e+01, double 1.820000e+01}
!159 = !{!133, !158, i1 false, i2 -1}
!160 = !{!46, !47, i1 false, i2 1}
!161 = !{i1 false, !162, i1 false, i2 -1}
!162 = !{double -1.400000e+01, double 1.600000e+01}
!163 = distinct !{!163, !23}
!164 = distinct !{!164, !23}
!165 = !{i32 -1, i32 -1, i32 3, i32 -1}
!166 = !{i32 1, !67, i32 1, !67, i32 1, !41, i32 1, !167}
!167 = !{i1 false, !168, i1 false, i2 0}
!168 = !{double 2.560000e+02, double 2.560000e+02}
!169 = !{void (i32, i32, float*, i32)* @scale_2d}
!170 = !{!171, !168, i1 false, i2 1}
!171 = !{!"fixp", i32 32, i32 23}
!172 = !{!173, !174, i1 false, i2 -1}
!173 = !{!"fixp", i32 -32, i32 11}
!174 = !{double 0x40C111111F0C34C2, double 0x412E22221FF2E48F}
!175 = !{!176, !174, i1 false, i2 -1}
!176 = !{!"fixp", i32 32, i32 12}
!177 = distinct !{!177, !23}
!178 = distinct !{!178, !23}
!179 = !{i32 1, !67, i32 1, !67, i32 1, !45, i32 1, !167}
!180 = !{!181, !182, i1 false, i2 -1}
!181 = !{!"fixp", i32 -32, i32 10}
!182 = !{double 0x40C99999A1FD156A, double 0x413011112007DD44}
!183 = !{!184, !182, i1 false, i2 -1}
!184 = !{!"fixp", i32 32, i32 11}
!185 = distinct !{!185, !23}
!186 = distinct !{!186, !23}
