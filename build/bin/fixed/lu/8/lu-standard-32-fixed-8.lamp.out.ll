; ModuleID = './build/bin/fixed/lu/8/lu-standard-32-fixed-8.out.ll'
source_filename = "./sources/lu.c"
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
  %lampsim2 = and i32 %lampsim, -65536
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
  %lampsim6 = and i32 %lampsim5, -65536
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %val, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -65536
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -65536
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -65536
  %lampsim19 = bitcast i32 %lampsim18 to float
  %add20 = fadd float %x.0, %lampsim19
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -65536
  %lampsim23 = bitcast i32 %lampsim22 to float
  %mul524 = fmul float %lampsim23, %lampsim23
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -65536
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %val, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -65536
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
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %0, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
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
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %1, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
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
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %3, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
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
  %A.u9_23fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !41, !taffo.target !44
  %arraydecay.u9_23fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  call void @init_array.2_fixp(i32 20, [20 x i32]* %arraydecay.u9_23fixp), !taffo.info !45, !taffo.constinfo !46, !taffo.target !44
  %arraydecay2.u9_23fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %u9_23fixp = bitcast [20 x i32]* %arraydecay2.u9_23fixp to i32*, !taffo.info !41, !taffo.target !44
  call void @scale_2d.3_fixp(i32 20, i32 20, i32* %u9_23fixp, i32 32), !taffo.info !45, !taffo.constinfo !47, !taffo.target !44
  call void @timer_start(), !taffo.constinfo !48
  %arraydecay3.u9_23fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  call void @kernel_lu.1_fixp(i32 20, [20 x i32]* %arraydecay3.u9_23fixp), !taffo.info !45, !taffo.constinfo !46, !taffo.target !44
  call void @timer_stop(), !taffo.constinfo !48
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !51
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !49
  %cmp5 = icmp sle i32 %j.0, %i.0, !taffo.info !51
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u9_23fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u9_23fixp, i32 0, i32 %i.0, !taffo.info !41, !taffo.target !44
  %arrayidx7.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41, !taffo.target !44
  %u9_23fixp1 = load i32, i32* %arrayidx7.u9_23fixp, align 4, !taffo.info !41, !taffo.target !44
  %0 = uitofp i32 %u9_23fixp1 to float, !taffo.info !41, !taffo.target !44
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -65536
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4160000000000000, !taffo.info !41, !taffo.target !44
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -65536
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx8 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx8, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx9, align 4, !taffo.info !45, !taffo.target !44
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %j.0, 1, !taffo.info !53, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !55

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !53, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !56

for.end12:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !46
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !24 !taffo.funinfo !57 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !51
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !60
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !62
  %add = add nsw i32 %mul, %j.0, !taffo.info !62
  %rem = srem i32 %add, 20, !taffo.info !62, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !60
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
  %lampsim2 = and i64 %lampsim, -35184372088832
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !64
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !65

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !66

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu.1_fixp(i32 noundef %n, [20 x i32]* noundef %A.u9_23fixp) #0 !taffo.initweight !67 !taffo.funinfo !68 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !51
  %cmp2 = icmp slt i32 %j.0, %i.0, !taffo.info !62
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !51
  %cmp5 = icmp slt i32 %k.0, %j.0, !taffo.info !62
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx8.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41
  %u9_23fixp = load i32, i32* %arrayidx8.u9_23fixp, align 4, !taffo.info !41
  %arrayidx9.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %k.0, !taffo.info !41
  %arrayidx10.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx9.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %u9_23fixp1 = load i32, i32* %arrayidx10.u9_23fixp, align 4, !taffo.info !41
  %0 = lshr i32 %u9_23fixp, 1, !taffo.info !41
  %1 = lshr i32 %u9_23fixp1, 1, !taffo.info !41
  %2 = ashr i32 %0, 8, !taffo.info !41
  %3 = ashr i32 %1, 8, !taffo.info !41
  %mul.s18_14fixp = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 14), !taffo.info !70
  %arrayidx11.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx12.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %u9_23fixp2 = load i32, i32* %arrayidx12.u9_23fixp, align 4, !taffo.info !41
  %4 = lshr i32 %u9_23fixp2, 9, !taffo.info !41
  %sub.s18_14fixp = sub i32 %4, %mul.s18_14fixp, !taffo.info !73
  %5 = shl i32 %sub.s18_14fixp, 9, !taffo.info !73
  store i32 %5, i32* %arrayidx12.u9_23fixp, align 4, !taffo.info !75
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !76

for.end:                                          ; preds = %for.cond4
  %arrayidx13.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %j.0, !taffo.info !41
  %arrayidx14.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx13.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %u9_23fixp3 = load i32, i32* %arrayidx14.u9_23fixp, align 4, !taffo.info !41
  %arrayidx15.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx16.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx15.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %u9_23fixp4 = load i32, i32* %arrayidx16.u9_23fixp, align 4, !taffo.info !41
  %6 = lshr i32 %u9_23fixp4, 1, !taffo.info !41
  %7 = lshr i32 %u9_23fixp3, 1, !taffo.info !41
  %8 = ashr i32 %6, 3, !taffo.info !41
  %9 = ashr i32 %7, 3, !taffo.info !41
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 19), !taffo.info !77
  %div.u12_20fixp = shl i32 %10, 1, !taffo.info !80
  %11 = shl i32 %div.u12_20fixp, 3, !taffo.info !80
  store i32 %11, i32* %arrayidx16.u9_23fixp, align 4, !taffo.info !45
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !82

for.end19:                                        ; preds = %for.cond1
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !51
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !60
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc37, %for.inc36 ], !taffo.info !51
  %cmp24 = icmp slt i32 %k.1, %i.0, !taffo.info !62
  br i1 %cmp24, label %for.body25, label %for.end38

for.body25:                                       ; preds = %for.cond23
  %arrayidx28.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx29.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx28.u9_23fixp, i32 0, i32 %k.1, !taffo.info !41
  %u9_23fixp5 = load i32, i32* %arrayidx29.u9_23fixp, align 4, !taffo.info !41
  %arrayidx30.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %k.1, !taffo.info !41
  %arrayidx31.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx30.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %u9_23fixp6 = load i32, i32* %arrayidx31.u9_23fixp, align 4, !taffo.info !41
  %12 = lshr i32 %u9_23fixp5, 1, !taffo.info !41
  %13 = lshr i32 %u9_23fixp6, 1, !taffo.info !41
  %14 = ashr i32 %12, 8, !taffo.info !41
  %15 = ashr i32 %13, 8, !taffo.info !41
  %mul32.s18_14fixp = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 14), !taffo.info !70
  %arrayidx33.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx34.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx33.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %u9_23fixp7 = load i32, i32* %arrayidx34.u9_23fixp, align 4, !taffo.info !41
  %16 = lshr i32 %u9_23fixp7, 9, !taffo.info !41
  %sub35.s18_14fixp = sub i32 %16, %mul32.s18_14fixp, !taffo.info !73
  %17 = shl i32 %sub35.s18_14fixp, 9, !taffo.info !73
  store i32 %17, i32* %arrayidx34.u9_23fixp, align 4, !taffo.info !75
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25
  %inc37 = add nsw i32 %k.1, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !83

for.end38:                                        ; preds = %for.cond23
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !84

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !85

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, [20 x i32]* noundef %A.u9_23fixp) #0 !taffo.initweight !67 !taffo.funinfo !68 !taffo.sourceFunction !86 {
entry:
  %B.u17_15fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !87
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !90, !taffo.initweight !92
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93, !taffo.initweight !94
  br i1 %cmp, label %for.body, label %for.end22, !taffo.info !95, !taffo.initweight !97

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !90, !taffo.initweight !92
  %cmp4 = icmp sle i32 %j.0, %i.0, !taffo.info !93, !taffo.initweight !94
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !95, !taffo.initweight !97

for.body5:                                        ; preds = %for.cond3
  %sub = sub nsw i32 0, %j.0, !taffo.info !95, !taffo.initweight !94, !taffo.constinfo !21
  %rem = srem i32 %sub, %n, !taffo.info !98, !taffo.initweight !97
  %conv.s6_26fixp = shl i32 %rem, 26, !taffo.info !100
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !102
  %0 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !102
  %1 = call i32 @llvm.sdiv.fix.i32(i32 %conv.s6_26fixp, i32 %0, i32 26), !taffo.info !104
  %div.s3_29fixp = shl i32 %1, 3, !taffo.info !106
  %2 = lshr i32 -2147483648, 2
  %add.s3_29fixp = add i32 %div.s3_29fixp, %2, !taffo.info !108, !taffo.constinfo !110
  %arrayidx.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !111
  %arrayidx7.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u9_23fixp, i32 0, i32 %j.0, !taffo.info !111
  %3 = ashr i32 %add.s3_29fixp, 6, !taffo.info !108, !taffo.constinfo !110
  store i32 %3, i32* %arrayidx7.u9_23fixp, align 4, !taffo.info !75
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !112, !taffo.initweight !94, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !114

for.end:                                          ; preds = %for.cond3
  %add8 = add nsw i32 %i.0, 1, !taffo.info !112, !taffo.initweight !94, !taffo.constinfo !21
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %j.1 = phi i32 [ %add8, %for.end ], [ %inc16, %for.inc15 ], !taffo.info !115, !taffo.initweight !92
  %cmp10 = icmp slt i32 %j.1, %n, !taffo.info !93, !taffo.initweight !94
  br i1 %cmp10, label %for.body12, label %for.end17, !taffo.info !95, !taffo.initweight !97

for.body12:                                       ; preds = %for.cond9
  %arrayidx13.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !111
  %arrayidx14.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx13.u9_23fixp, i32 0, i32 %j.1, !taffo.info !111
  store i32 0, i32* %arrayidx14.u9_23fixp, align 4, !taffo.info !75, !taffo.constinfo !117
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %inc16 = add nsw i32 %j.1, 1, !taffo.info !118, !taffo.initweight !94, !taffo.constinfo !21
  br label %for.cond9, !llvm.loop !120

for.end17:                                        ; preds = %for.cond9
  %arrayidx18.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !111
  %arrayidx19.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx18.u9_23fixp, i32 0, i32 %i.0, !taffo.info !111
  store i32 8388608, i32* %arrayidx19.u9_23fixp, align 4, !taffo.info !75, !taffo.constinfo !121
  br label %for.inc20

for.inc20:                                        ; preds = %for.end17
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !112, !taffo.initweight !94, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !122

for.end22:                                        ; preds = %for.cond
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc37, %for.end22
  %r.0 = phi i32 [ 0, %for.end22 ], [ %inc38, %for.inc37 ], !taffo.info !51
  %cmp25 = icmp slt i32 %r.0, %n, !taffo.info !60
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond24
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %for.body27
  %s.0 = phi i32 [ 0, %for.body27 ], [ %inc35, %for.inc34 ], !taffo.info !51
  %cmp29 = icmp slt i32 %s.0, %n, !taffo.info !60
  br i1 %cmp29, label %for.body31, label %for.end36

for.body31:                                       ; preds = %for.cond28
  %arrayidx32.u17_15fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u17_15fixp, i32 0, i32 %r.0, !taffo.info !87
  %arrayidx33.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx32.u17_15fixp, i32 0, i32 %s.0, !taffo.info !87
  store i32 0, i32* %arrayidx33.u17_15fixp, align 4, !taffo.info !75, !taffo.constinfo !117
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %inc35 = add nsw i32 %s.0, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !123

for.end36:                                        ; preds = %for.cond28
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %inc38 = add nsw i32 %r.0, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond24, !llvm.loop !124

for.end39:                                        ; preds = %for.cond24
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc65, %for.end39
  %t.0 = phi i32 [ 0, %for.end39 ], [ %inc66, %for.inc65 ], !taffo.info !51
  %cmp41 = icmp slt i32 %t.0, %n, !taffo.info !60
  br i1 %cmp41, label %for.body43, label %for.end67

for.body43:                                       ; preds = %for.cond40
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc62, %for.body43
  %r.1 = phi i32 [ 0, %for.body43 ], [ %inc63, %for.inc62 ], !taffo.info !51
  %cmp45 = icmp slt i32 %r.1, %n, !taffo.info !60
  br i1 %cmp45, label %for.body47, label %for.end64

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc59, %for.body47
  %s.1 = phi i32 [ 0, %for.body47 ], [ %inc60, %for.inc59 ], !taffo.info !51
  %cmp49 = icmp slt i32 %s.1, %n, !taffo.info !60
  br i1 %cmp49, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond48
  %arrayidx52.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %r.1, !taffo.info !41
  %arrayidx53.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx52.u9_23fixp, i32 0, i32 %t.0, !taffo.info !41
  %u9_23fixp = load i32, i32* %arrayidx53.u9_23fixp, align 4, !taffo.info !41
  %arrayidx54.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %s.1, !taffo.info !41
  %arrayidx55.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx54.u9_23fixp, i32 0, i32 %t.0, !taffo.info !41
  %u9_23fixp1 = load i32, i32* %arrayidx55.u9_23fixp, align 4, !taffo.info !41
  %4 = lshr i32 %u9_23fixp, 1, !taffo.info !41
  %5 = lshr i32 %u9_23fixp1, 1, !taffo.info !41
  %6 = ashr i32 %4, 8, !taffo.info !41
  %7 = ashr i32 %5, 8, !taffo.info !41
  %8 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 14), !taffo.info !125
  %mul.u17_15fixp = shl i32 %8, 1, !taffo.info !126
  %arrayidx56.u17_15fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u17_15fixp, i32 0, i32 %r.1, !taffo.info !87
  %arrayidx57.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx56.u17_15fixp, i32 0, i32 %s.1, !taffo.info !87
  %u17_15fixp2 = load i32, i32* %arrayidx57.u17_15fixp, align 4, !taffo.info !127
  %add58.u17_15fixp = add i32 %u17_15fixp2, %mul.u17_15fixp, !taffo.info !129
  store i32 %add58.u17_15fixp, i32* %arrayidx57.u17_15fixp, align 4, !taffo.info !75
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %inc60 = add nsw i32 %s.1, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !130

for.end61:                                        ; preds = %for.cond48
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %inc63 = add nsw i32 %r.1, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond44, !llvm.loop !131

for.end64:                                        ; preds = %for.cond44
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %inc66 = add nsw i32 %t.0, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond40, !llvm.loop !132

for.end67:                                        ; preds = %for.cond40
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc83, %for.end67
  %r.2 = phi i32 [ 0, %for.end67 ], [ %inc84, %for.inc83 ], !taffo.info !51
  %cmp69 = icmp slt i32 %r.2, %n, !taffo.info !60
  br i1 %cmp69, label %for.body71, label %for.end85

for.body71:                                       ; preds = %for.cond68
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc80, %for.body71
  %s.2 = phi i32 [ 0, %for.body71 ], [ %inc81, %for.inc80 ], !taffo.info !51
  %cmp73 = icmp slt i32 %s.2, %n, !taffo.info !60
  br i1 %cmp73, label %for.body75, label %for.end82

for.body75:                                       ; preds = %for.cond72
  %arrayidx76.u17_15fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u17_15fixp, i32 0, i32 %r.2, !taffo.info !87
  %arrayidx77.u17_15fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx76.u17_15fixp, i32 0, i32 %s.2, !taffo.info !87
  %u17_15fixp = load i32, i32* %arrayidx77.u17_15fixp, align 4, !taffo.info !87
  %arrayidx78.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u9_23fixp, i32 %r.2, !taffo.info !41
  %arrayidx79.u9_23fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx78.u9_23fixp, i32 0, i32 %s.2, !taffo.info !41
  %9 = shl i32 %u17_15fixp, 8, !taffo.info !87
  store i32 %9, i32* %arrayidx79.u9_23fixp, align 4, !taffo.info !75
  br label %for.inc80

for.inc80:                                        ; preds = %for.body75
  %inc81 = add nsw i32 %s.2, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond72, !llvm.loop !133

for.end82:                                        ; preds = %for.cond72
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %inc84 = add nsw i32 %r.2, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond68, !llvm.loop !134

for.end85:                                        ; preds = %for.cond68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u9_23fixp, i32 noundef %factor) #0 !taffo.initweight !135 !taffo.funinfo !136 !taffo.sourceFunction !139 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !51
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !60
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !62
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %0, !taffo.info !41
  %arrayidx4.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx.u9_23fixp, i32 %j.0, !taffo.info !41
  %u9_23fixp = load i32, i32* %arrayidx4.u9_23fixp, align 4, !taffo.info !41
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !140
  %1 = lshr i32 %u9_23fixp, 1, !taffo.info !41
  %2 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !140
  %3 = ashr i32 %1, 5, !taffo.info !41
  %4 = ashr i32 %2, 8, !taffo.info !140
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 17), !taffo.info !142
  %mul.u14_18fixp = shl i32 %5, 1, !taffo.info !145
  %6 = mul nsw i32 %i.0, %m, !taffo.info !62
  %arrayidx5.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %6, !taffo.info !41
  %arrayidx6.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx5.u9_23fixp, i32 %j.0, !taffo.info !41
  %7 = shl i32 %mul.u14_18fixp, 5, !taffo.info !145
  store i32 %7, i32* %arrayidx6.u9_23fixp, align 4, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !147

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !60, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !148

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
!1 = !{double 0.000000e+00, double 0x40705851DFFC547A}
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
!42 = !{!"fixp", i32 32, i32 23}
!43 = !{double 1.000000e-01, double 0x40705851DFFC547A}
!44 = !{!"A"}
!45 = !{i1 false, !43, i1 false, i2 -1}
!46 = !{i1 false, i1 false, i1 false}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = !{i1 false}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 2.100000e+01}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.000000e+00}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 1.000000e+00, double 2.100000e+01}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = !{i32 1, !58, i32 1, !0}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 2.000000e+01, double 2.000000e+01}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 1.000000e+00, double 1.000000e+00}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 0.000000e+00}
!64 = !{i1 false, i1 false, i1 false, i1 false}
!65 = distinct !{!65, !23}
!66 = distinct !{!66, !23}
!67 = !{i32 -1, i32 2}
!68 = !{i32 1, !58, i32 1, !41}
!69 = distinct !{null}
!70 = !{!71, !72, i1 false, i2 1}
!71 = !{!"fixp", i32 -32, i32 14}
!72 = !{double 0x3F847AE147AE147C, double 0x40F0B28B463B78B0}
!73 = !{!71, !74, i1 false, i2 1}
!74 = !{double 0xC0F0B289ACA1DF16, double 0x40705828EA39C51E}
!75 = !{i1 false, i1 false, i1 false, i2 1}
!76 = distinct !{!76, !23}
!77 = !{!78, !79, i1 false, i2 -1}
!78 = !{!"fixp", i32 -32, i32 19}
!79 = !{double 0x3F390F455FEACCE2, double 0x40A46E6657FB6998}
!80 = !{!81, !79, i1 false, i2 -1}
!81 = !{!"fixp", i32 32, i32 20}
!82 = distinct !{!82, !23}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = distinct !{!85, !23}
!86 = distinct !{null}
!87 = !{!88, !89, i1 false, i2 1}
!88 = !{!"fixp", i32 32, i32 15}
!89 = !{double 0.000000e+00, double 0x40F0B28B463B78B0}
!90 = !{i1 false, !91, i1 false, i2 1}
!91 = !{double -2.000000e+01, double 2.100000e+01}
!92 = !{i32 0}
!93 = !{i1 false, !52, i1 false, i2 1}
!94 = !{i32 2}
!95 = !{i1 false, !96, i1 false, i2 1}
!96 = !{double -2.000000e+01, double 2.000000e+01}
!97 = !{i32 3}
!98 = !{i1 false, !99, i1 false, i2 1}
!99 = !{double -1.900000e+01, double 1.900000e+01}
!100 = !{!101, !99, i1 false, i2 1}
!101 = !{!"fixp", i32 -32, i32 26}
!102 = !{!103, !59, i1 false, i2 1}
!103 = !{!"fixp", i32 32, i32 27}
!104 = !{!101, !105, i1 false, i2 1}
!105 = !{double 0xBFEE666666666666, double 0x3FEE666666666666}
!106 = !{!107, !105, i1 false, i2 1}
!107 = !{!"fixp", i32 -32, i32 29}
!108 = !{!107, !109, i1 false, i2 1}
!109 = !{double 0x3FA99999999999A0, double 1.950000e+00}
!110 = !{i1 false, !60}
!111 = !{!42, !43, i1 false, i2 1}
!112 = !{i1 false, !113, i1 false, i2 1}
!113 = !{double -1.900000e+01, double 2.100000e+01}
!114 = distinct !{!114, !23}
!115 = !{i1 false, !116, i1 false, i2 1}
!116 = !{double -2.000000e+01, double 2.200000e+01}
!117 = !{!62, i1 false}
!118 = !{i1 false, !119, i1 false, i2 1}
!119 = !{double -1.900000e+01, double 2.200000e+01}
!120 = distinct !{!120, !23}
!121 = !{!60, i1 false}
!122 = distinct !{!122, !23}
!123 = distinct !{!123, !23}
!124 = distinct !{!124, !23}
!125 = !{!71, !72, i1 false, i2 -1}
!126 = !{!88, !72, i1 false, i2 -1}
!127 = !{!128, !63, i1 false, i2 1}
!128 = !{!"fixp", i32 32, i32 32}
!129 = !{!88, !72, i1 false, i2 1}
!130 = distinct !{!130, !23}
!131 = distinct !{!131, !23}
!132 = distinct !{!132, !23}
!133 = distinct !{!133, !23}
!134 = distinct !{!134, !23}
!135 = !{i32 -1, i32 -1, i32 3, i32 -1}
!136 = !{i32 1, !58, i32 1, !58, i32 1, !41, i32 1, !137}
!137 = !{i1 false, !138, i1 false, i2 0}
!138 = !{double 3.200000e+01, double 3.200000e+01}
!139 = !{void (i32, i32, float*, i32)* @scale_2d}
!140 = !{!141, !138, i1 false, i2 1}
!141 = !{!"fixp", i32 32, i32 26}
!142 = !{!143, !144, i1 false, i2 -1}
!143 = !{!"fixp", i32 -32, i32 17}
!144 = !{double 3.200000e+00, double 0x40C05851DFFC547A}
!145 = !{!146, !144, i1 false, i2 -1}
!146 = !{!"fixp", i32 32, i32 18}
!147 = distinct !{!147, !23}
!148 = distinct !{!148, !23}
