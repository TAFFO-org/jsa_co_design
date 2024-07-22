; ModuleID = './build/bin/fixed/seidel-2d/24/seidel-2d-standard-128-fixed-24.out.ll'
source_filename = "./sources/seidel-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %A.u12_20fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !41, !taffo.target !44
  %arraydecay.u12_20fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u12_20fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  call void @init_array.2_fixp(i32 20, [20 x i32]* %arraydecay.u12_20fixp), !taffo.info !45, !taffo.constinfo !46, !taffo.target !44
  %arraydecay2.u12_20fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u12_20fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %u12_20fixp = bitcast [20 x i32]* %arraydecay2.u12_20fixp to i32*, !taffo.info !41, !taffo.target !44
  call void @scale_2d.3_fixp(i32 20, i32 20, i32* %u12_20fixp, i32 128), !taffo.info !45, !taffo.constinfo !47, !taffo.target !44
  call void @timer_start(), !taffo.constinfo !48
  %arraydecay3.u12_20fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u12_20fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  call void @kernel_seidel_2d.1_fixp(i32 10, i32 20, [20 x i32]* %arraydecay3.u12_20fixp), !taffo.info !45, !taffo.constinfo !49, !taffo.target !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !50
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !52
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !54
  %cmp5 = icmp slt i32 %j.0, 20, !taffo.info !52
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u12_20fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u12_20fixp, i32 0, i32 %i.0, !taffo.info !41, !taffo.target !44
  %arrayidx7.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u12_20fixp, i32 0, i32 %j.0, !taffo.info !41, !taffo.target !44
  %u12_20fixp1 = load i32, i32* %arrayidx7.u12_20fixp, align 4, !taffo.info !41, !taffo.target !44
  %0 = uitofp i32 %u12_20fixp1 to float, !taffo.info !41, !taffo.target !44
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4130000000000000, !taffo.info !41, !taffo.target !44
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx8 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx8, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx9, align 4, !taffo.info !45, !taffo.target !44
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %j.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !58

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !61

for.end12:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !46
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !24 !taffo.funinfo !62 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !65
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !52
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !65
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !67
  %add = add nsw i32 %mul, %j.0, !taffo.info !67
  %rem = srem i32 %add, 20, !taffo.info !67, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !65
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !46
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -536870912
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !49
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !69

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !70

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d.1_fixp(i32 noundef %tsteps, i32 noundef %n, [20 x i32]* noundef %A.u12_20fixp) #0 !taffo.initweight !71 !taffo.funinfo !72 !taffo.sourceFunction !73 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc56, %for.inc55 ], !taffo.info !52
  %sub = sub nsw i32 %tsteps, 1, !taffo.info !74, !taffo.constinfo !21
  %cmp = icmp sle i32 %t.0, %sub, !taffo.info !65
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc52, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc53, %for.inc52 ], !taffo.info !76
  %sub2 = sub nsw i32 %n, 2, !taffo.info !78, !taffo.constinfo !21
  %cmp3 = icmp sle i32 %i.0, %sub2, !taffo.info !65
  br i1 %cmp3, label %for.body4, label %for.end54

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 1, %for.body4 ], [ %inc, %for.inc ], !taffo.info !76
  %sub6 = sub nsw i32 %n, 2, !taffo.info !78, !taffo.constinfo !21
  %cmp7 = icmp sle i32 %j.0, %sub6, !taffo.info !65
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %sub10 = sub nsw i32 %i.0, 1, !taffo.info !67, !taffo.constinfo !21
  %arrayidx.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %sub10, !taffo.info !41
  %sub11 = sub nsw i32 %j.0, 1, !taffo.info !67, !taffo.constinfo !21
  %arrayidx12.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u12_20fixp, i32 0, i32 %sub11, !taffo.info !41
  %u12_20fixp = load i32, i32* %arrayidx12.u12_20fixp, align 4, !taffo.info !80
  %sub13 = sub nsw i32 %i.0, 1, !taffo.info !67, !taffo.constinfo !21
  %arrayidx14.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %sub13, !taffo.info !41
  %arrayidx15.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx14.u12_20fixp, i32 0, i32 %j.0, !taffo.info !41
  %u12_20fixp1 = load i32, i32* %arrayidx15.u12_20fixp, align 4, !taffo.info !80
  %0 = lshr i32 %u12_20fixp, 1, !taffo.info !80
  %1 = lshr i32 %u12_20fixp1, 1, !taffo.info !80
  %add.u13_19fixp = add i32 %0, %1, !taffo.info !82
  %sub16 = sub nsw i32 %i.0, 1, !taffo.info !67, !taffo.constinfo !21
  %arrayidx17.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %sub16, !taffo.info !41
  %add18 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx19.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx17.u12_20fixp, i32 0, i32 %add18, !taffo.info !41
  %u12_20fixp2 = load i32, i32* %arrayidx19.u12_20fixp, align 4, !taffo.info !80
  %2 = lshr i32 %add.u13_19fixp, 1, !taffo.info !82
  %3 = lshr i32 %u12_20fixp2, 2, !taffo.info !80
  %add20.u14_18fixp = add i32 %2, %3, !taffo.info !84
  %arrayidx21.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %i.0, !taffo.info !41
  %sub22 = sub nsw i32 %j.0, 1, !taffo.info !67, !taffo.constinfo !21
  %arrayidx23.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx21.u12_20fixp, i32 0, i32 %sub22, !taffo.info !41
  %u12_20fixp3 = load i32, i32* %arrayidx23.u12_20fixp, align 4, !taffo.info !87
  %4 = lshr i32 %add20.u14_18fixp, 1, !taffo.info !84
  %5 = lshr i32 %u12_20fixp3, 3, !taffo.info !87
  %add24.u15_17fixp = add i32 %4, %5, !taffo.info !88
  %arrayidx26.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %i.0, !taffo.info !41
  %arrayidx27.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx26.u12_20fixp, i32 0, i32 %j.0, !taffo.info !41
  %u12_20fixp4 = load i32, i32* %arrayidx27.u12_20fixp, align 4, !taffo.info !80
  %arrayidx28.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %i.0, !taffo.info !41
  %add29 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx30.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx28.u12_20fixp, i32 0, i32 %add29, !taffo.info !41
  %u12_20fixp5 = load i32, i32* %arrayidx30.u12_20fixp, align 4, !taffo.info !80
  %6 = lshr i32 %u12_20fixp4, 1, !taffo.info !80
  %7 = lshr i32 %u12_20fixp5, 1, !taffo.info !80
  %add31.u13_19fixp = add i32 %6, %7, !taffo.info !82
  %add32 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx33.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %add32, !taffo.info !41
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !67, !taffo.constinfo !21
  %arrayidx35.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx33.u12_20fixp, i32 0, i32 %sub34, !taffo.info !41
  %u12_20fixp6 = load i32, i32* %arrayidx35.u12_20fixp, align 4, !taffo.info !80
  %8 = lshr i32 %add31.u13_19fixp, 1, !taffo.info !82
  %9 = lshr i32 %u12_20fixp6, 2, !taffo.info !80
  %add36.u14_18fixp = add i32 %8, %9, !taffo.info !84
  %add37 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx38.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %add37, !taffo.info !41
  %arrayidx39.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx38.u12_20fixp, i32 0, i32 %j.0, !taffo.info !41
  %u12_20fixp7 = load i32, i32* %arrayidx39.u12_20fixp, align 4, !taffo.info !87
  %10 = lshr i32 %u12_20fixp7, 2, !taffo.info !87
  %add40.u14_18fixp = add i32 %add36.u14_18fixp, %10, !taffo.info !91
  %add41 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx42.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %add41, !taffo.info !41
  %add43 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx44.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx42.u12_20fixp, i32 0, i32 %add43, !taffo.info !41
  %u12_20fixp8 = load i32, i32* %arrayidx44.u12_20fixp, align 4, !taffo.info !87
  %11 = lshr i32 %add40.u14_18fixp, 1, !taffo.info !91
  %12 = lshr i32 %u12_20fixp8, 3, !taffo.info !87
  %add45.u15_17fixp = add i32 %11, %12, !taffo.info !92
  %add47.u15_17fixp = add i32 %add24.u15_17fixp, %add45.u15_17fixp, !taffo.info !94
  %13 = lshr i32 %add47.u15_17fixp, 1, !taffo.info !94
  %14 = shl i32 9, 27
  %15 = ashr i32 %14, 11
  %16 = call i32 @llvm.sdiv.fix.i32(i32 %13, i32 %15, i32 16), !taffo.info !96
  %div49.u12_20fixp = shl i32 %16, 4, !taffo.info !98, !taffo.constinfo !99
  %arrayidx50.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %i.0, !taffo.info !41
  %arrayidx51.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx50.u12_20fixp, i32 0, i32 %j.0, !taffo.info !41
  store i32 %div49.u12_20fixp, i32* %arrayidx51.u12_20fixp, align 4, !taffo.info !100
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !101

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %inc53 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !102

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %inc56 = add nsw i32 %t.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !103

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, [20 x i32]* noundef %A.u12_20fixp) #0 !taffo.initweight !104 !taffo.funinfo !105 !taffo.sourceFunction !106 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !107, !taffo.initweight !109
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp, label %for.body, label %for.end12, !taffo.info !107, !taffo.initweight !112

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !107, !taffo.initweight !109
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !107, !taffo.initweight !112

for.body5:                                        ; preds = %for.cond3
  %conv.s6_26fixp = shl i32 %i.0, 26, !taffo.info !113
  %add = add nsw i32 %j.0, 2, !taffo.info !115, !taffo.initweight !111, !taffo.constinfo !21
  %conv6.s6_26fixp = shl i32 %add, 26, !taffo.info !117, !taffo.constinfo !21
  %0 = ashr i32 %conv.s6_26fixp, 4, !taffo.info !113
  %1 = ashr i32 %conv6.s6_26fixp, 4, !taffo.info !117, !taffo.constinfo !21
  %mul.s10_22fixp = call i32 @llvm.smul.fix.i32(i32 %0, i32 %1, i32 22), !taffo.info !118
  %2 = lshr i32 -2147483648, 8
  %add7.s10_22fixp = add i32 %mul.s10_22fixp, %2, !taffo.info !121, !taffo.constinfo !123
  %conv8.s6_26fixp = shl i32 %n, 26, !taffo.info !124
  %3 = ashr i32 %conv8.s6_26fixp, 4, !taffo.info !124
  %4 = call i32 @llvm.sdiv.fix.i32(i32 %add7.s10_22fixp, i32 %3, i32 22), !taffo.info !125
  %div.s6_26fixp = shl i32 %4, 4, !taffo.info !127
  %arrayidx.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u12_20fixp, i32 %i.0, !taffo.info !98
  %arrayidx9.u12_20fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u12_20fixp, i32 0, i32 %j.0, !taffo.info !98
  %5 = ashr i32 %div.s6_26fixp, 6, !taffo.info !127
  store i32 %5, i32* %arrayidx9.u12_20fixp, align 4, !taffo.info !100
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !128, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !130

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !128, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !131

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u12_20fixp, i32 noundef %factor) #0 !taffo.initweight !132 !taffo.funinfo !133 !taffo.sourceFunction !136 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !65
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !52
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !65
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !67
  %arrayidx.u12_20fixp = getelementptr inbounds i32, i32* %val.u12_20fixp, i32 %0, !taffo.info !41
  %arrayidx4.u12_20fixp = getelementptr inbounds i32, i32* %arrayidx.u12_20fixp, i32 %j.0, !taffo.info !41
  %u12_20fixp = load i32, i32* %arrayidx4.u12_20fixp, align 4, !taffo.info !41
  %conv.u8_24fixp = shl i32 %factor, 24, !taffo.info !137
  %1 = lshr i32 %u12_20fixp, 1, !taffo.info !41
  %2 = lshr i32 %conv.u8_24fixp, 1, !taffo.info !137
  %3 = ashr i32 %1, 7, !taffo.info !41
  %4 = ashr i32 %2, 11, !taffo.info !137
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 12), !taffo.info !139
  %mul.u19_13fixp = shl i32 %5, 1, !taffo.info !142
  %6 = mul nsw i32 %i.0, %m, !taffo.info !67
  %arrayidx5.u12_20fixp = getelementptr inbounds i32, i32* %val.u12_20fixp, i32 %6, !taffo.info !41
  %arrayidx6.u12_20fixp = getelementptr inbounds i32, i32* %arrayidx5.u12_20fixp, i32 %j.0, !taffo.info !41
  %7 = shl i32 %mul.u19_13fixp, 7, !taffo.info !142
  store i32 %7, i32* %arrayidx6.u12_20fixp, align 4, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !144

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !145

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
!1 = !{double 0.000000e+00, double 0x40A40CCCBFF47736}
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
!31 = distinct !{null}
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
!43 = !{double 1.280000e+01, double 0x40A40CCCBFF47736}
!44 = !{!"A"}
!45 = !{i1 false, !43, i1 false, i2 -1}
!46 = !{i1 false, i1 false, i1 false}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = !{i1 false}
!49 = !{i1 false, i1 false, i1 false, i1 false}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 2.100000e+01}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 1.000000e+00}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 4.410000e+02}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 4.410000e+02}
!58 = distinct !{!58, !23}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 2.100000e+01}
!61 = distinct !{!61, !23}
!62 = !{i32 1, !63, i32 1, !0}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 2.000000e+01, double 2.000000e+01}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e+00, double 1.000000e+00}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 0.000000e+00}
!69 = distinct !{!69, !23}
!70 = distinct !{!70, !23}
!71 = !{i32 -1, i32 -1, i32 2}
!72 = !{i32 1, !16, i32 1, !63, i32 1, !41}
!73 = distinct !{null}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 9.000000e+00, double 9.000000e+00}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 2.000000e+00}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.800000e+01, double 1.800000e+01}
!80 = !{!81, !43, i1 false, i2 -1}
!81 = !{!"fixp", i32 32, i32 19}
!82 = !{!81, !83, i1 false, i2 -1}
!83 = !{double 2.560000e+01, double 0x40B40CCCBFF47736}
!84 = !{!85, !86, i1 false, i2 -1}
!85 = !{!"fixp", i32 32, i32 18}
!86 = !{double 0x4043333333333334, double 0x40BE13331FEEB2D1}
!87 = !{!85, !43, i1 false, i2 -1}
!88 = !{!89, !90, i1 false, i2 1}
!89 = !{!"fixp", i32 32, i32 17}
!90 = !{double 5.120000e+01, double 0x40C40CCCBFF47736}
!91 = !{!85, !90, i1 false, i2 -1}
!92 = !{!89, !93, i1 false, i2 1}
!93 = !{double 6.400000e+01, double 0x40C90FFFEFF19504}
!94 = !{!89, !95, i1 false, i2 1}
!95 = !{double 1.152000e+02, double 0x40D68E6657F3061D}
!96 = !{!97, !43, i1 false, i2 1}
!97 = !{!"fixp", i32 -32, i32 16}
!98 = !{!42, !43, i1 false, i2 1}
!99 = !{i1 false, !74}
!100 = !{i1 false, i1 false, i1 false, i2 1}
!101 = distinct !{!101, !23}
!102 = distinct !{!102, !23}
!103 = distinct !{!103, !23}
!104 = !{i32 -1, i32 2}
!105 = !{i32 1, !63, i32 1, !41}
!106 = distinct !{null}
!107 = !{i1 false, !108, i1 false, i2 -1}
!108 = !{double -2.000000e+01, double 2.000000e+01}
!109 = !{i32 0}
!110 = !{i1 false, !53, i1 false, i2 -1}
!111 = !{i32 2}
!112 = !{i32 3}
!113 = !{!114, !108, i1 false, i2 -1}
!114 = !{!"fixp", i32 -32, i32 26}
!115 = !{i1 false, !116, i1 false, i2 -1}
!116 = !{double -1.800000e+01, double 2.200000e+01}
!117 = !{!114, !116, i1 false, i2 -1}
!118 = !{!119, !120, i1 false, i2 -1}
!119 = !{!"fixp", i32 -32, i32 22}
!120 = !{double -4.400000e+02, double 4.400000e+02}
!121 = !{!119, !122, i1 false, i2 -1}
!122 = !{double -4.380000e+02, double 4.420000e+02}
!123 = !{i1 false, !19}
!124 = !{!114, !64, i1 false, i2 1}
!125 = !{!119, !126, i1 false, i2 -1}
!126 = !{double -2.190000e+01, double 2.210000e+01}
!127 = !{!114, !126, i1 false, i2 -1}
!128 = !{i1 false, !129, i1 false, i2 -1}
!129 = !{double -1.900000e+01, double 2.100000e+01}
!130 = distinct !{!130, !23}
!131 = distinct !{!131, !23}
!132 = !{i32 -1, i32 -1, i32 3, i32 -1}
!133 = !{i32 1, !63, i32 1, !63, i32 1, !41, i32 1, !134}
!134 = !{i1 false, !135, i1 false, i2 0}
!135 = !{double 1.280000e+02, double 1.280000e+02}
!136 = !{void (i32, i32, float*, i32)* @scale_2d}
!137 = !{!138, !135, i1 false, i2 1}
!138 = !{!"fixp", i32 32, i32 24}
!139 = !{!140, !141, i1 false, i2 -1}
!140 = !{!"fixp", i32 -32, i32 12}
!141 = !{double 1.638400e+03, double 0x41140CCCBFF47736}
!142 = !{!143, !141, i1 false, i2 -1}
!143 = !{!"fixp", i32 32, i32 13}
!144 = distinct !{!144, !23}
!145 = distinct !{!145, !23}
