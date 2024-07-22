; ModuleID = './build/bin/fixed/mvt/8/mvt-standard-8-fixed-8.out.ll.3.taffotmp.ll'
source_filename = "./sources/mvt.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x1_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@x2_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !2
@stderr = external global %struct._IO_FILE*, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !4
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !6

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !17
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !20
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !28 !taffo.funinfo !29 !taffo.equivalentChild !30 {
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !32 !taffo.funinfo !33 !taffo.equivalentChild !34 {
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
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !35

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !36

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !37 !taffo.funinfo !38 {
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
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !23
  br label %for.cond4, !llvm.loop !39

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !40

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !41

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !42 !taffo.funinfo !42 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !42 !taffo.funinfo !42 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !26 !taffo.funinfo !27 !taffo.start !43 {
entry:
  %A = alloca [20 x [20 x float]], align 4, !taffo.info !44, !taffo.initweight !47
  %x1 = alloca [20 x float], align 4, !taffo.info !48, !taffo.initweight !47, !taffo.target !50
  %x2 = alloca [20 x float], align 4, !taffo.info !51, !taffo.initweight !47, !taffo.target !52
  %y_1 = alloca [20 x float], align 4, !taffo.info !44, !taffo.initweight !47
  %y_2 = alloca [20 x float], align 4, !taffo.info !44, !taffo.initweight !47
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.info !53, !taffo.initweight !54
  %x12 = bitcast [20 x float]* %x1 to i8*, !taffo.info !55, !taffo.initweight !54, !taffo.target !50
  %x23 = bitcast [20 x float]* %x2 to i8*, !taffo.info !55, !taffo.initweight !54, !taffo.target !52
  %y_14 = bitcast [20 x float]* %y_1 to i8*, !taffo.info !53, !taffo.initweight !54
  %y_25 = bitcast [20 x float]* %y_2 to i8*, !taffo.info !53, !taffo.initweight !54
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.info !48, !taffo.initweight !54, !taffo.target !50
  %arraydecay6 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.info !51, !taffo.initweight !54, !taffo.target !52
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.info !44, !taffo.initweight !54
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.info !44, !taffo.initweight !54
  %arraydecay9 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !44, !taffo.initweight !54
  call void @init_array.6(i32 noundef 20, float* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, [20 x float]* noundef %arraydecay9), !taffo.info !56, !taffo.initweight !57, !taffo.constinfo !58, !taffo.originalCall !59
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !44, !taffo.initweight !54
  %0 = bitcast [20 x float]* %arraydecay10 to float*, !taffo.info !44, !taffo.initweight !57
  call void @scale_2d.7(i32 noundef 20, i32 noundef 20, float* noundef %0, i32 noundef 8), !taffo.info !56, !taffo.initweight !60, !taffo.constinfo !61, !taffo.originalCall !62
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.info !48, !taffo.initweight !54, !taffo.target !50
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 8), !taffo.info !63, !taffo.initweight !57, !taffo.constinfo !64, !taffo.target !50, !taffo.originalCall !65
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.info !51, !taffo.initweight !54, !taffo.target !52
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay12, i32 noundef 8), !taffo.info !66, !taffo.initweight !57, !taffo.constinfo !64, !taffo.target !52, !taffo.originalCall !65
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.info !44, !taffo.initweight !54
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 8), !taffo.info !56, !taffo.initweight !57, !taffo.constinfo !64, !taffo.originalCall !65
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.info !44, !taffo.initweight !54
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay14, i32 noundef 8), !taffo.info !56, !taffo.initweight !57, !taffo.constinfo !64, !taffo.originalCall !65
  call void @timer_start(), !taffo.constinfo !67
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.info !48, !taffo.initweight !54, !taffo.target !50
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.info !51, !taffo.initweight !54, !taffo.target !52
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.info !44, !taffo.initweight !54
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.info !44, !taffo.initweight !54
  %arraydecay19 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !44, !taffo.initweight !54
  call void @kernel_mvt.4(i32 noundef 20, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, [20 x float]* noundef %arraydecay19), !taffo.info !56, !taffo.initweight !57, !taffo.constinfo !58, !taffo.originalCall !68
  call void @timer_stop(), !taffo.constinfo !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 %i.0, !taffo.info !48, !taffo.initweight !54, !taffo.target !50
  %1 = load float, float* %arrayidx, align 4, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %arrayidx20 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx20, align 4, !taffo.info !63, !taffo.initweight !60, !taffo.target !50
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 %i.0, !taffo.info !51, !taffo.initweight !54, !taffo.target !52
  %2 = load float, float* %arrayidx21, align 4, !taffo.info !51, !taffo.initweight !57, !taffo.target !52
  %arrayidx22 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i32 0, i32 %i.0, !taffo.info !2
  store float %2, float* %arrayidx22, align 4, !taffo.info !66, !taffo.initweight !60, !taffo.target !52
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x1_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x2_float, i32 0, i32 0)), !taffo.constinfo !64
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x1, float* noundef %x2) #0 !taffo.initweight !28 !taffo.funinfo !76 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !81, !taffo.constinfo !23
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !79
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !83
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %conv), !taffo.constinfo !64
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !71
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !79
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !81, !taffo.constinfo !23
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !79
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !83
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.info !2
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !2
  %conv14 = fpext float %5 to double, !taffo.info !2
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %conv14), !taffo.constinfo !64
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond3, !llvm.loop !85

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !26 !taffo.funinfo !27 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.funinfo !87 !taffo.sourceFunction !65 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !48, !taffo.initweight !90
  %0 = load float, float* %arrayidx, align 4, !taffo.info !48, !taffo.initweight !91
  %conv = sitofp i32 %factor to float, !taffo.info !92
  %mul = fmul float %0, %conv, !taffo.info !93, !taffo.initweight !96
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !48, !taffo.initweight !90
  store float %mul, float* %arrayidx1, align 4, !taffo.info !63, !taffo.initweight !91
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.funinfo !98 !taffo.sourceFunction !65 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !44, !taffo.initweight !90
  %0 = load float, float* %arrayidx, align 4, !taffo.info !99, !taffo.initweight !91
  %conv = sitofp i32 %factor to float, !taffo.info !101
  %mul = fmul float %0, %conv, !taffo.info !102, !taffo.initweight !96
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !44, !taffo.initweight !90
  store float %mul, float* %arrayidx1, align 4, !taffo.info !56, !taffo.initweight !91
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !104

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt.4(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !105 !taffo.funinfo !106 !taffo.sourceFunction !68 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !48, !taffo.initweight !90
  %0 = load float, float* %arrayidx, align 4, !taffo.info !48, !taffo.initweight !91
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !44, !taffo.initweight !90
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx4, i32 0, i32 %j.0, !taffo.info !44, !taffo.initweight !91
  %1 = load float, float* %arrayidx5, align 4, !taffo.info !99, !taffo.initweight !96
  %arrayidx6 = getelementptr inbounds float, float* %y_1, i32 %j.0, !taffo.info !44, !taffo.initweight !90
  %2 = load float, float* %arrayidx6, align 4, !taffo.info !99, !taffo.initweight !91
  %mul = fmul float %1, %2, !taffo.info !107, !taffo.initweight !96
  %add = fadd float %0, %mul, !taffo.info !109, !taffo.initweight !96
  %arrayidx7 = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !48, !taffo.initweight !90
  store float %add, float* %arrayidx7, align 4, !taffo.info !63, !taffo.initweight !91
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !111

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !112

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc28, %for.inc27 ], !taffo.info !71
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !79
  br i1 %cmp12, label %for.body13, label %for.end29

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.body13
  %j.1 = phi i32 [ 0, %for.body13 ], [ %inc25, %for.inc24 ], !taffo.info !71
  %cmp15 = icmp slt i32 %j.1, %n, !taffo.info !79
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %arrayidx17 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.info !51, !taffo.initweight !90
  %3 = load float, float* %arrayidx17, align 4, !taffo.info !51, !taffo.initweight !91
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1, !taffo.info !44, !taffo.initweight !90
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %i.1, !taffo.info !44, !taffo.initweight !91
  %4 = load float, float* %arrayidx19, align 4, !taffo.info !99, !taffo.initweight !96
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %j.1, !taffo.info !44, !taffo.initweight !90
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !99, !taffo.initweight !91
  %mul21 = fmul float %4, %5, !taffo.info !107, !taffo.initweight !96
  %add22 = fadd float %3, %mul21, !taffo.info !113, !taffo.initweight !96
  %arrayidx23 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.info !51, !taffo.initweight !90
  store float %add22, float* %arrayidx23, align 4, !taffo.info !66, !taffo.initweight !91
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond14, !llvm.loop !115

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond11, !llvm.loop !116

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !105 !taffo.funinfo !106 !taffo.sourceFunction !59 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31 ], !taffo.info !117, !taffo.initweight !47
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !118, !taffo.initweight !57
  br i1 %cmp, label %for.body, label %for.end33, !taffo.info !119, !taffo.initweight !60

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !121, !taffo.initweight !57
  %conv = sitofp i32 %rem to float, !taffo.info !123, !taffo.initweight !60
  %conv3 = sitofp i32 %n to float, !taffo.info !125
  %div = fdiv float %conv, %conv3, !taffo.info !126, !taffo.initweight !129
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !130, !taffo.initweight !57
  store float %div, float* %arrayidx, align 4, !taffo.info !131, !taffo.initweight !60
  %add = add nsw i32 %i.0, 1, !taffo.info !132, !taffo.initweight !57, !taffo.constinfo !23
  %rem4 = srem i32 %add, %n, !taffo.info !121, !taffo.initweight !60
  %conv5 = sitofp i32 %rem4 to float, !taffo.info !123, !taffo.initweight !129
  %conv6 = sitofp i32 %n to float, !taffo.info !125
  %div7 = fdiv float %conv5, %conv6, !taffo.info !126, !taffo.initweight !90
  %arrayidx8 = getelementptr inbounds float, float* %x2, i32 %i.0, !taffo.info !133, !taffo.initweight !57
  store float %div7, float* %arrayidx8, align 4, !taffo.info !131, !taffo.initweight !60
  %add9 = add nsw i32 %i.0, 3, !taffo.info !134, !taffo.initweight !57, !taffo.constinfo !23
  %rem10 = srem i32 %add9, %n, !taffo.info !121, !taffo.initweight !60
  %conv11 = sitofp i32 %rem10 to float, !taffo.info !123, !taffo.initweight !129
  %conv12 = sitofp i32 %n to float, !taffo.info !125
  %div13 = fdiv float %conv11, %conv12, !taffo.info !126, !taffo.initweight !90
  %arrayidx14 = getelementptr inbounds float, float* %y_1, i32 %i.0, !taffo.info !136, !taffo.initweight !57
  store float %div13, float* %arrayidx14, align 4, !taffo.info !131, !taffo.initweight !60
  %add15 = add nsw i32 %i.0, 4, !taffo.info !137, !taffo.initweight !57, !taffo.constinfo !23
  %rem16 = srem i32 %add15, %n, !taffo.info !121, !taffo.initweight !60
  %conv17 = sitofp i32 %rem16 to float, !taffo.info !123, !taffo.initweight !129
  %conv18 = sitofp i32 %n to float, !taffo.info !125
  %div19 = fdiv float %conv17, %conv18, !taffo.info !126, !taffo.initweight !90
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %i.0, !taffo.info !136, !taffo.initweight !57
  store float %div19, float* %arrayidx20, align 4, !taffo.info !131, !taffo.initweight !60
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !117, !taffo.initweight !47
  %cmp22 = icmp slt i32 %j.0, %n, !taffo.info !118, !taffo.initweight !57
  br i1 %cmp22, label %for.body24, label %for.end, !taffo.info !119, !taffo.initweight !60

for.body24:                                       ; preds = %for.cond21
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !139, !taffo.initweight !57
  %rem25 = srem i32 %mul, %n, !taffo.info !121, !taffo.initweight !60
  %conv26 = sitofp i32 %rem25 to float, !taffo.info !123, !taffo.initweight !129
  %conv27 = sitofp i32 %n to float, !taffo.info !125
  %div28 = fdiv float %conv26, %conv27, !taffo.info !126, !taffo.initweight !90
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !136, !taffo.initweight !57
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx29, i32 0, i32 %j.0, !taffo.info !136, !taffo.initweight !57
  store float %div28, float* %arrayidx30, align 4, !taffo.info !131, !taffo.initweight !60
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.info !132, !taffo.initweight !57, !taffo.constinfo !23
  br label %for.cond21, !llvm.loop !141

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %inc32 = add nsw i32 %i.0, 1, !taffo.info !132, !taffo.initweight !57, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !142

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !143 !taffo.funinfo !144 !taffo.sourceFunction !62 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !44, !taffo.initweight !91
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !44, !taffo.initweight !96
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !99, !taffo.initweight !145
  %conv = sitofp i32 %factor to float, !taffo.info !101
  %mul = fmul float %1, %conv, !taffo.info !102, !taffo.initweight !146
  %2 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !44, !taffo.initweight !91
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !44, !taffo.initweight !96
  store float %mul, float* %arrayidx6, align 4, !taffo.info !56, !taffo.initweight !145
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !147

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !148

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x40740666601BC98A}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x40742666601BC98A}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.000000e+01}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"NumRegisterParameters", i32 0}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!15 = !{i32 -1}
!16 = !{i32 0, i1 false}
!17 = !{i1 false, !18}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 1.000000e+01, double 1.000000e+01}
!20 = !{!21, i1 false}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 2.000000e+00, double 2.000000e+00}
!23 = !{i1 false, i1 false}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false}
!28 = !{i32 -1, i32 -1, i32 -1}
!29 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!30 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.3}
!31 = distinct !{!31, !25}
!32 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = !{void (i32, i32, float*, i32)* @scale_2d.7}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!38 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = !{}
!43 = !{i1 true}
!44 = !{!45, !46, i1 false, i2 -1}
!45 = !{!"fixp", i32 32, i32 28}
!46 = !{double 0.000000e+00, double 7.600000e+00}
!47 = !{i32 0}
!48 = !{!49, !1, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 23}
!50 = !{!"x1"}
!51 = !{!49, !3, i1 false, i2 -1}
!52 = !{!"x2"}
!53 = !{!45, i1 false, i1 false, i2 -1}
!54 = !{i32 1}
!55 = !{!49, i1 false, i1 false, i2 -1}
!56 = !{i1 false, !46, i1 false, i2 -1}
!57 = !{i32 2}
!58 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!59 = distinct !{null}
!60 = !{i32 3}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = !{void (i32, i32, float*, i32)* @scale_2d}
!63 = !{i1 false, !1, i1 false, i2 -1}
!64 = !{i1 false, i1 false, i1 false, i1 false}
!65 = !{void (i32, float*, i32)* @scale_1d}
!66 = !{i1 false, !3, i1 false, i2 -1}
!67 = !{i1 false}
!68 = distinct !{null}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 2.100000e+01}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 1.000000e+00}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 2.100000e+01}
!75 = distinct !{!75, !25}
!76 = !{i32 1, !77, i32 1, !0, i32 1, !2}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 2.000000e+01, double 2.000000e+01}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.000000e+00, double 1.000000e+00}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 0.000000e+00, double 0.000000e+00}
!83 = !{i1 false, i1 false, i1 false}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !25}
!86 = !{i32 -1, i32 2, i32 -1}
!87 = !{i32 1, !77, i32 1, !48, i32 1, !88}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 8.000000e+00, double 8.000000e+00}
!90 = !{i32 5}
!91 = !{i32 6}
!92 = !{!45, !89, i1 false, i2 1}
!93 = !{!94, !95, i1 false, i2 -1}
!94 = !{!"fixp", i32 32, i32 20}
!95 = !{double 0.000000e+00, double 0x40A40666601BC98A}
!96 = !{i32 7}
!97 = distinct !{!97, !25}
!98 = !{i32 1, !77, i32 1, !44, i32 1, !88}
!99 = !{!100, !46, i1 false, i2 -1}
!100 = !{!"fixp", i32 32, i32 26}
!101 = !{!100, !89, i1 false, i2 1}
!102 = !{!100, !103, i1 false, i2 -1}
!103 = !{double 0.000000e+00, double 6.080000e+01}
!104 = distinct !{!104, !25}
!105 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!106 = !{i32 1, !77, i32 1, !48, i32 1, !51, i32 1, !44, i32 1, !44, i32 1, !44}
!107 = !{!100, !108, i1 false, i2 -1}
!108 = !{double 0.000000e+00, double 5.776000e+01}
!109 = !{!49, !110, i1 false, i2 -1}
!110 = !{double 0.000000e+00, double 0x4077A28F55DE58E6}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = !{!49, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 0x4077C28F55DE58E6}
!115 = distinct !{!115, !25}
!116 = distinct !{!116, !25}
!117 = !{i1 false, !70, i1 false, i2 1}
!118 = !{i1 false, !72, i1 false, i2 1}
!119 = !{i1 false, !120, i1 false, i2 1}
!120 = !{double 0.000000e+00, double 2.000000e+01}
!121 = !{i1 false, !122, i1 false, i2 1}
!122 = !{double 0.000000e+00, double 1.900000e+01}
!123 = !{!124, !122, i1 false, i2 1}
!124 = !{!"fixp", i32 32, i32 27}
!125 = !{!124, !78, i1 false, i2 1}
!126 = !{!127, !128, i1 false, i2 1}
!127 = !{!"fixp", i32 32, i32 31}
!128 = !{double 0.000000e+00, double 0x3FEE666666666666}
!129 = !{i32 4}
!130 = !{!49, !1, i1 false, i2 1}
!131 = !{i1 false, i1 false, i1 false, i2 1}
!132 = !{i1 false, !74, i1 false, i2 1}
!133 = !{!49, !3, i1 false, i2 1}
!134 = !{i1 false, !135, i1 false, i2 1}
!135 = !{double 3.000000e+00, double 2.300000e+01}
!136 = !{!45, !46, i1 false, i2 1}
!137 = !{i1 false, !138, i1 false, i2 1}
!138 = !{double 4.000000e+00, double 2.400000e+01}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 0.000000e+00, double 4.000000e+02}
!141 = distinct !{!141, !25}
!142 = distinct !{!142, !25}
!143 = !{i32 -1, i32 -1, i32 3, i32 -1}
!144 = !{i32 1, !77, i32 1, !77, i32 1, !44, i32 1, !88}
!145 = !{i32 8}
!146 = !{i32 9}
!147 = distinct !{!147, !25}
!148 = distinct !{!148, !25}
