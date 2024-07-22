; ModuleID = './build/bin/fixed/atax/8/atax-standard-2-fixed-8.out.ll'
source_filename = "./sources/atax.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@y_float = dso_local global [22 x float] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 !taffo.equivalentChild !28 {
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
  %A.u1_31fixp = alloca [20 x [22 x i32]], align 4, !taffo.info !42
  %x.u3_29fixp = alloca [22 x i32], align 4, !taffo.info !45
  %y.u6_26fixp = alloca [22 x i32], align 4, !taffo.info !48, !taffo.target !50
  %tmp.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !51
  %arraydecay.u1_31fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !42
  %arraydecay5.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u3_29fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay6.u6_26fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u6_26fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  %arraydecay7.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u5_27fixp, i32 0, i32 0, !taffo.info !51
  call void @init_array.5_fixp(i32 20, i32 22, [22 x i32]* %arraydecay.u1_31fixp, i32* %arraydecay5.u3_29fixp, i32* %arraydecay6.u6_26fixp, i32* %arraydecay7.u5_27fixp), !taffo.info !54, !taffo.constinfo !55
  %arraydecay8.u1_31fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !42
  %u1_31fixp = bitcast [22 x i32]* %arraydecay8.u1_31fixp to i32*, !taffo.info !42
  call void @scale_2d.6_fixp(i32 20, i32 22, i32* %u1_31fixp, i32 2), !taffo.info !54, !taffo.constinfo !56
  %arraydecay9.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u3_29fixp, i32 0, i32 0, !taffo.info !45
  call void @scale_1d.1_fixp(i32 22, i32* %arraydecay9.u3_29fixp, i32 2), !taffo.info !57, !taffo.constinfo !58
  %arraydecay10.u6_26fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u6_26fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  call void @scale_1d.2_fixp(i32 22, i32* %arraydecay10.u6_26fixp, i32 2), !taffo.info !59, !taffo.constinfo !58, !taffo.target !50
  %arraydecay11.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u5_27fixp, i32 0, i32 0, !taffo.info !51
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay11.u5_27fixp, i32 2), !taffo.info !60, !taffo.constinfo !58
  call void @timer_start(), !taffo.constinfo !61
  %arraydecay12.u1_31fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !42
  %arraydecay13.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u3_29fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay14.u6_26fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u6_26fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  %arraydecay15.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u5_27fixp, i32 0, i32 0, !taffo.info !51
  call void @kernel_atax.3_fixp(i32 20, i32 22, [22 x i32]* %arraydecay12.u1_31fixp, i32* %arraydecay13.u3_29fixp, i32* %arraydecay14.u6_26fixp, i32* %arraydecay15.u5_27fixp), !taffo.info !54, !taffo.constinfo !55
  call void @timer_stop(), !taffo.constinfo !61
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !62
  %cmp = icmp slt i32 %i.0, 22, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u6_26fixp, i32 0, i32 %i.0, !taffo.info !48, !taffo.target !50
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !48, !taffo.target !50
  %0 = uitofp i32 %u6_26fixp to float, !taffo.info !48, !taffo.target !50
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -65536
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4190000000000000, !taffo.info !48, !taffo.target !50
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -65536
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx16 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx16, align 4, !taffo.info !59, !taffo.target !50
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 22, float* noundef getelementptr inbounds ([22 x float], [22 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !69
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !24 !taffo.funinfo !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !75, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !73
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !69
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -35184372088832
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !58
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !78 !taffo.funinfo !79 !taffo.sourceFunction !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !45
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !81
  %conv.u4_28fixp = shl i32 %factor, 28, !taffo.info !83
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !81
  %1 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !83
  %2 = ashr i32 %0, 1, !taffo.info !81
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 27), !taffo.info !84
  %mul.u4_28fixp = shl i32 %3, 1, !taffo.info !87
  %arrayidx1.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !45
  %4 = shl i32 %mul.u4_28fixp, 1, !taffo.info !87
  store i32 %4, i32* %arrayidx1.u3_29fixp, align 4, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2_fixp(i32 noundef %n, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !78 !taffo.funinfo !89 !taffo.sourceFunction !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !48
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !90
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !92
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !90
  %1 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !92
  %2 = ashr i32 %0, 1, !taffo.info !90
  %3 = ashr i32 %1, 5, !taffo.info !92
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 24), !taffo.info !94
  %mul.u7_25fixp = shl i32 %4, 1, !taffo.info !97
  %arrayidx1.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !48
  %5 = shl i32 %mul.u7_25fixp, 1, !taffo.info !97
  store i32 %5, i32* %arrayidx1.u6_26fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !98

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax.3_fixp(i32 noundef %m, i32 noundef %n, [22 x i32]* noundef %A.u1_31fixp, i32* noundef %x.u3_29fixp, i32* noundef %y.u6_26fixp, i32* noundef %tmp.u5_27fixp) #0 !taffo.initweight !99 !taffo.funinfo !100 !taffo.sourceFunction !103 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !48
  store i32 0, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !104, !taffo.constinfo !105
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !106

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !64
  %cmp2 = icmp slt i32 %i.1, %m, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %arrayidx4.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.1, !taffo.info !51
  store i32 0, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !104, !taffo.constinfo !105
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc14, %for.inc13 ], !taffo.info !64
  %cmp6 = icmp slt i32 %j.0, %n, !taffo.info !73
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.1, !taffo.info !51
  %u5_27fixp = load i32, i32* %arrayidx8.u5_27fixp, align 4, !taffo.info !51
  %arrayidx9.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u1_31fixp, i32 %i.1, !taffo.info !42
  %arrayidx10.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx9.u1_31fixp, i32 0, i32 %j.0, !taffo.info !42
  %u1_31fixp = load i32, i32* %arrayidx10.u1_31fixp, align 4, !taffo.info !107
  %arrayidx11.u3_29fixp = getelementptr inbounds i32, i32* %x.u3_29fixp, i32 %j.0, !taffo.info !45
  %u3_29fixp = load i32, i32* %arrayidx11.u3_29fixp, align 4, !taffo.info !45
  %0 = lshr i32 %u1_31fixp, 1, !taffo.info !107
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !45
  %2 = ashr i32 %0, 2, !taffo.info !107
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 28), !taffo.info !108
  %mul.u2_30fixp = shl i32 %3, 2, !taffo.info !111
  %4 = lshr i32 %mul.u2_30fixp, 3, !taffo.info !111
  %add.u5_27fixp = add i32 %u5_27fixp, %4, !taffo.info !112
  %arrayidx12.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.1, !taffo.info !51
  store i32 %add.u5_27fixp, i32* %arrayidx12.u5_27fixp, align 4, !taffo.info !60
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %inc14 = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !114

for.end15:                                        ; preds = %for.cond5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %j.1 = phi i32 [ 0, %for.end15 ], [ %inc27, %for.inc26 ], !taffo.info !64
  %cmp17 = icmp slt i32 %j.1, %n, !taffo.info !73
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %arrayidx19.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %j.1, !taffo.info !48
  %u6_26fixp = load i32, i32* %arrayidx19.u6_26fixp, align 4, !taffo.info !90
  %arrayidx20.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u1_31fixp, i32 %i.1, !taffo.info !42
  %arrayidx21.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx20.u1_31fixp, i32 0, i32 %j.1, !taffo.info !42
  %u1_31fixp2 = load i32, i32* %arrayidx21.u1_31fixp, align 4, !taffo.info !115
  %arrayidx22.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.1, !taffo.info !51
  %u5_27fixp1 = load i32, i32* %arrayidx22.u5_27fixp, align 4, !taffo.info !51
  %5 = lshr i32 %u1_31fixp2, 1, !taffo.info !115
  %6 = lshr i32 %u5_27fixp1, 1, !taffo.info !51
  %7 = ashr i32 %5, 4, !taffo.info !115
  %8 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %6, i32 26), !taffo.info !116
  %mul23.u3_29fixp = shl i32 %8, 3, !taffo.info !119
  %9 = lshr i32 %u6_26fixp, 1, !taffo.info !90
  %10 = lshr i32 %mul23.u3_29fixp, 4, !taffo.info !119
  %add24.u7_25fixp = add i32 %9, %10, !taffo.info !120
  %arrayidx25.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %j.1, !taffo.info !48
  %11 = shl i32 %add24.u7_25fixp, 1, !taffo.info !120
  store i32 %11, i32* %arrayidx25.u6_26fixp, align 4, !taffo.info !59
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !122

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !123

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !78 !taffo.funinfo !124 !taffo.sourceFunction !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !51
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !51
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !92
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !51
  %1 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !92
  %2 = ashr i32 %1, 3, !taffo.info !92
  %3 = call i32 @llvm.smul.fix.i32(i32 %0, i32 %2, i32 26), !taffo.info !125
  %mul.u5_27fixp = shl i32 %3, 1, !taffo.info !127
  %arrayidx1.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !51
  store i32 %mul.u5_27fixp, i32* %arrayidx1.u5_27fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !128

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5_fixp(i32 noundef %m, i32 noundef %n, [22 x i32]* noundef %A.u1_31fixp, i32* noundef %x.u3_29fixp, i32* noundef %y.u6_26fixp, i32* noundef %tmp.u5_27fixp) #0 !taffo.initweight !99 !taffo.funinfo !100 !taffo.sourceFunction !129 {
entry:
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !130
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !131, !taffo.initweight !133
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !134, !taffo.initweight !135
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !131, !taffo.initweight !136

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !137
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !137
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !130
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !138
  %div.u2_30fixp = shl i32 %2, 4, !taffo.info !139
  %3 = lshr i32 -2147483648, 1
  %add.u2_30fixp = add i32 %3, %div.u2_30fixp, !taffo.info !140, !taffo.constinfo !142
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %x.u3_29fixp, i32 %i.0, !taffo.info !143
  %4 = lshr i32 %add.u2_30fixp, 1, !taffo.info !140, !taffo.constinfo !142
  store i32 %4, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !104
  %arrayidx6.u6_26fixp = getelementptr inbounds i32, i32* %y.u6_26fixp, i32 %i.0, !taffo.info !144
  store i32 0, i32* %arrayidx6.u6_26fixp, align 4, !taffo.info !104, !taffo.constinfo !105
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !145, !taffo.initweight !135, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !146

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ], !taffo.info !131, !taffo.initweight !133
  %cmp8 = icmp slt i32 %i.1, %m, !taffo.info !134, !taffo.initweight !135
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.info !131, !taffo.initweight !136

for.body10:                                       ; preds = %for.cond7
  %arrayidx11.u5_27fixp = getelementptr inbounds i32, i32* %tmp.u5_27fixp, i32 %i.1, !taffo.info !147
  store i32 0, i32* %arrayidx11.u5_27fixp, align 4, !taffo.info !104, !taffo.constinfo !105
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %j.0 = phi i32 [ 0, %for.body10 ], [ %inc23, %for.inc22 ], !taffo.info !131, !taffo.initweight !133
  %cmp13 = icmp slt i32 %j.0, %n, !taffo.info !134, !taffo.initweight !135
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.info !131, !taffo.initweight !136

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %i.1, %j.0, !taffo.info !148, !taffo.initweight !135
  %rem = srem i32 %add16, %n, !taffo.info !150, !taffo.initweight !136
  %conv17.u5_27fixp = shl i32 %rem, 27, !taffo.info !152
  %mul = mul nsw i32 5, %m, !taffo.info !153, !taffo.constinfo !21
  %conv18.u7_25fixp = shl i32 %mul, 25, !taffo.info !155, !taffo.constinfo !21
  %5 = lshr i32 %conv17.u5_27fixp, 1, !taffo.info !152
  %6 = lshr i32 %conv18.u7_25fixp, 1, !taffo.info !155, !taffo.constinfo !21
  %7 = ashr i32 %5, 2, !taffo.info !152
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 24), !taffo.info !156
  %div19.u1_31fixp = shl i32 %8, 7, !taffo.info !158
  %arrayidx20.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u1_31fixp, i32 %i.1, !taffo.info !159
  %arrayidx21.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx20.u1_31fixp, i32 0, i32 %j.0, !taffo.info !159
  store i32 %div19.u1_31fixp, i32* %arrayidx21.u1_31fixp, align 4, !taffo.info !104
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %inc23 = add nsw i32 %j.0, 1, !taffo.info !145, !taffo.initweight !135, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !160

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.1, 1, !taffo.info !145, !taffo.initweight !135, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !161

for.end27:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u1_31fixp, i32 noundef %factor) #0 !taffo.initweight !162 !taffo.funinfo !163 !taffo.sourceFunction !164 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx.u1_31fixp = getelementptr inbounds i32, i32* %val.u1_31fixp, i32 %0, !taffo.info !42
  %arrayidx4.u1_31fixp = getelementptr inbounds i32, i32* %arrayidx.u1_31fixp, i32 %j.0, !taffo.info !42
  %u1_31fixp = load i32, i32* %arrayidx4.u1_31fixp, align 4, !taffo.info !42
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !92
  %1 = lshr i32 %u1_31fixp, 1, !taffo.info !42
  %2 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !92
  %3 = ashr i32 %1, 1, !taffo.info !42
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 29), !taffo.info !165
  %mul.u2_30fixp = shl i32 %4, 1, !taffo.info !168
  %5 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx5.u1_31fixp = getelementptr inbounds i32, i32* %val.u1_31fixp, i32 %5, !taffo.info !42
  %arrayidx6.u1_31fixp = getelementptr inbounds i32, i32* %arrayidx5.u1_31fixp, i32 %j.0, !taffo.info !42
  %6 = shl i32 %mul.u2_30fixp, 1, !taffo.info !168
  store i32 %6, i32* %arrayidx6.u1_31fixp, align 4, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !169

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !170

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
!1 = !{double 0.000000e+00, double 0x404EC4189BD8383B}
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
!28 = distinct !{null, null, null}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = distinct !{null}
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
!43 = !{!"fixp", i32 32, i32 31}
!44 = !{double 0.000000e+00, double 4.200000e-01}
!45 = !{!46, !47, i1 false, i2 -1}
!46 = !{!"fixp", i32 32, i32 29}
!47 = !{double 2.000000e+00, double 0x400F45D18090B418}
!48 = !{!49, !1, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 26}
!50 = !{!"y"}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 27}
!53 = !{double 0.000000e+00, double 1.526000e+01}
!54 = !{i1 false, !44, i1 false, i2 -1}
!55 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = !{i1 false, !47, i1 false, i2 -1}
!58 = !{i1 false, i1 false, i1 false, i1 false}
!59 = !{i1 false, !1, i1 false, i2 -1}
!60 = !{i1 false, !53, i1 false, i2 -1}
!61 = !{i1 false}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 2.300000e+01}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 1.000000e+00}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 2.300000e+01}
!68 = distinct !{!68, !23}
!69 = !{i1 false, i1 false, i1 false}
!70 = !{i32 1, !71, i32 1, !0}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 2.200000e+01, double 2.200000e+01}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 0.000000e+00}
!77 = distinct !{!77, !23}
!78 = !{i32 -1, i32 2, i32 -1}
!79 = !{i32 1, !71, i32 1, !45, i32 1, !19}
!80 = !{void (i32, float*, i32)* @scale_1d}
!81 = !{!82, !47, i1 false, i2 -1}
!82 = !{!"fixp", i32 32, i32 28}
!83 = !{!82, !20, i1 false, i2 1}
!84 = !{!85, !86, i1 false, i2 -1}
!85 = !{!"fixp", i32 -32, i32 27}
!86 = !{double 4.000000e+00, double 0x401F45D18090B418}
!87 = !{!82, !86, i1 false, i2 -1}
!88 = distinct !{!88, !23}
!89 = !{i32 1, !71, i32 1, !48, i32 1, !19}
!90 = !{!91, !1, i1 false, i2 -1}
!91 = !{!"fixp", i32 32, i32 25}
!92 = !{!93, !20, i1 false, i2 1}
!93 = !{!"fixp", i32 32, i32 30}
!94 = !{!95, !96, i1 false, i2 -1}
!95 = !{!"fixp", i32 -32, i32 24}
!96 = !{double 0.000000e+00, double 0x405EC4189BD8383B}
!97 = !{!91, !96, i1 false, i2 -1}
!98 = distinct !{!98, !23}
!99 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!100 = !{i32 1, !101, i32 1, !71, i32 1, !42, i32 1, !45, i32 1, !48, i32 1, !51}
!101 = !{i1 false, !102, i1 false, i2 0}
!102 = !{double 2.000000e+01, double 2.000000e+01}
!103 = distinct !{null}
!104 = !{i1 false, i1 false, i1 false, i2 1}
!105 = !{!75, i1 false}
!106 = distinct !{!106, !23}
!107 = !{!93, !44, i1 false, i2 -1}
!108 = !{!109, !110, i1 false, i2 -1}
!109 = !{!"fixp", i32 -32, i32 28}
!110 = !{double 0.000000e+00, double 0x3FFA44E32E8E07EB}
!111 = !{!93, !110, i1 false, i2 -1}
!112 = !{!52, !113, i1 false, i2 -1}
!113 = !{double 0.000000e+00, double 0x4030E6DD8F11D641}
!114 = distinct !{!114, !23}
!115 = !{!46, !44, i1 false, i2 -1}
!116 = !{!117, !118, i1 false, i2 -1}
!117 = !{!"fixp", i32 -32, i32 26}
!118 = !{double 0.000000e+00, double 0x4019A305532617C1}
!119 = !{!46, !118, i1 false, i2 -1}
!120 = !{!91, !121, i1 false, i2 -1}
!121 = !{double 0.000000e+00, double 0x4050FC3CA31E7D9A}
!122 = distinct !{!122, !23}
!123 = distinct !{!123, !23}
!124 = !{i32 1, !101, i32 1, !51, i32 1, !19}
!125 = !{!117, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 3.052000e+01}
!127 = !{!52, !126, i1 false, i2 -1}
!128 = distinct !{!128, !23}
!129 = distinct !{null}
!130 = !{!52, !72, i1 false, i2 1}
!131 = !{i1 false, !132, i1 false, i2 -1}
!132 = !{double 0.000000e+00, double 2.200000e+01}
!133 = !{i32 0}
!134 = !{i1 false, !65, i1 false, i2 -1}
!135 = !{i32 2}
!136 = !{i32 3}
!137 = !{!52, !132, i1 false, i2 -1}
!138 = !{!117, !65, i1 false, i2 1}
!139 = !{!93, !65, i1 false, i2 1}
!140 = !{!93, !141, i1 false, i2 1}
!141 = !{double 1.000000e+00, double 2.000000e+00}
!142 = !{!73, i1 false}
!143 = !{!46, !47, i1 false, i2 1}
!144 = !{!49, !1, i1 false, i2 1}
!145 = !{i1 false, !67, i1 false, i2 -1}
!146 = distinct !{!146, !23}
!147 = !{!52, !53, i1 false, i2 1}
!148 = !{i1 false, !149, i1 false, i2 -1}
!149 = !{double 0.000000e+00, double 4.400000e+01}
!150 = !{i1 false, !151, i1 false, i2 -1}
!151 = !{double 0.000000e+00, double 2.100000e+01}
!152 = !{!52, !151, i1 false, i2 -1}
!153 = !{i1 false, !154, i1 false, i2 0}
!154 = !{double 1.000000e+02, double 1.000000e+02}
!155 = !{!91, !154, i1 false, i2 1}
!156 = !{!95, !157, i1 false, i2 -1}
!157 = !{double 0.000000e+00, double 2.100000e-01}
!158 = !{!43, !157, i1 false, i2 -1}
!159 = !{!43, !44, i1 false, i2 1}
!160 = distinct !{!160, !23}
!161 = distinct !{!161, !23}
!162 = !{i32 -1, i32 -1, i32 3, i32 -1}
!163 = !{i32 1, !101, i32 1, !71, i32 1, !42, i32 1, !19}
!164 = !{void (i32, i32, float*, i32)* @scale_2d}
!165 = !{!166, !167, i1 false, i2 -1}
!166 = !{!"fixp", i32 -32, i32 29}
!167 = !{double 0.000000e+00, double 8.400000e-01}
!168 = !{!93, !167, i1 false, i2 -1}
!169 = distinct !{!169, !23}
!170 = distinct !{!170, !23}
