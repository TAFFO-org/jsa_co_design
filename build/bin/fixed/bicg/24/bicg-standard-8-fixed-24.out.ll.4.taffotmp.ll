; ModuleID = './build/bin/fixed/bicg/24/bicg-standard-8-fixed-24.out.ll.3.taffotmp.ll'
source_filename = "./sources/bicg.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@s_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@q_float = dso_local global [22 x float] zeroinitializer, align 4, !taffo.info !2
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !4
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !6

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
  %A = alloca [22 x [20 x float]], align 4, !taffo.info !44, !taffo.initweight !47
  %s = alloca [20 x float], align 4, !taffo.info !48, !taffo.initweight !47, !taffo.target !50
  %q = alloca [22 x float], align 4, !taffo.info !51, !taffo.initweight !47, !taffo.target !52
  %p = alloca [20 x float], align 4, !taffo.info !53, !taffo.initweight !47
  %r = alloca [22 x float], align 4, !taffo.info !44, !taffo.initweight !47
  %A1 = bitcast [22 x [20 x float]]* %A to i8*, !taffo.info !55, !taffo.initweight !56
  %s2 = bitcast [20 x float]* %s to i8*, !taffo.info !57, !taffo.initweight !56, !taffo.target !50
  %q3 = bitcast [22 x float]* %q to i8*, !taffo.info !57, !taffo.initweight !56, !taffo.target !52
  %p4 = bitcast [20 x float]* %p to i8*, !taffo.info !55, !taffo.initweight !56
  %r5 = bitcast [22 x float]* %r to i8*, !taffo.info !55, !taffo.initweight !56
  %arraydecay = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !44, !taffo.initweight !56
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.info !44, !taffo.initweight !56
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.info !53, !taffo.initweight !56
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.info !48, !taffo.initweight !56, !taffo.target !50
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.info !51, !taffo.initweight !56, !taffo.target !52
  call void @init_array.6(i32 noundef 20, i32 noundef 22, [20 x float]* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.info !58, !taffo.initweight !59, !taffo.constinfo !60, !taffo.originalCall !61
  %arraydecay10 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !44, !taffo.initweight !56
  %0 = bitcast [20 x float]* %arraydecay10 to float*, !taffo.info !44, !taffo.initweight !59
  call void @scale_2d.7(i32 noundef 22, i32 noundef 20, float* noundef %0, i32 noundef 8), !taffo.info !58, !taffo.initweight !62, !taffo.constinfo !63, !taffo.originalCall !64
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.info !48, !taffo.initweight !56, !taffo.target !50
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 8), !taffo.info !65, !taffo.initweight !59, !taffo.constinfo !66, !taffo.target !50, !taffo.originalCall !67
  %arraydecay12 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.info !51, !taffo.initweight !56, !taffo.target !52
  call void @scale_1d.1(i32 noundef 22, float* noundef %arraydecay12, i32 noundef 8), !taffo.info !68, !taffo.initweight !59, !taffo.constinfo !66, !taffo.target !52, !taffo.originalCall !67
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.info !53, !taffo.initweight !56
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 8), !taffo.info !69, !taffo.initweight !59, !taffo.constinfo !66, !taffo.originalCall !67
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.info !44, !taffo.initweight !56
  call void @scale_1d.3(i32 noundef 22, float* noundef %arraydecay14, i32 noundef 8), !taffo.info !58, !taffo.initweight !59, !taffo.constinfo !66, !taffo.originalCall !67
  call void @timer_start(), !taffo.constinfo !70
  %arraydecay15 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !44, !taffo.initweight !56
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.info !48, !taffo.initweight !56, !taffo.target !50
  %arraydecay17 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.info !51, !taffo.initweight !56, !taffo.target !52
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.info !53, !taffo.initweight !56
  %arraydecay19 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.info !44, !taffo.initweight !56
  call void @kernel_bicg.4(i32 noundef 20, i32 noundef 22, [20 x float]* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.info !58, !taffo.initweight !59, !taffo.constinfo !60, !taffo.originalCall !71
  call void @timer_stop(), !taffo.constinfo !70
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 %i.0, !taffo.info !48, !taffo.initweight !56, !taffo.target !50
  %1 = load float, float* %arrayidx, align 4, !taffo.info !48, !taffo.initweight !59, !taffo.target !50
  %arrayidx20 = getelementptr inbounds [20 x float], [20 x float]* @s_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx20, align 4, !taffo.info !65, !taffo.initweight !62, !taffo.target !50
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc27, %for.end
  %i21.0 = phi i32 [ 0, %for.end ], [ %inc28, %for.inc27 ], !taffo.info !79
  %cmp23 = icmp slt i32 %i21.0, 22, !taffo.info !74
  br i1 %cmp23, label %for.body24, label %for.end29

for.body24:                                       ; preds = %for.cond22
  %arrayidx25 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 %i21.0, !taffo.info !51, !taffo.initweight !56, !taffo.target !52
  %2 = load float, float* %arrayidx25, align 4, !taffo.info !51, !taffo.initweight !59, !taffo.target !52
  %arrayidx26 = getelementptr inbounds [22 x float], [22 x float]* @q_float, i32 0, i32 %i21.0, !taffo.info !2
  store float %2, float* %arrayidx26, align 4, !taffo.info !68, !taffo.initweight !62, !taffo.target !52
  br label %for.inc27

for.inc27:                                        ; preds = %for.body24
  %inc28 = add nsw i32 %i21.0, 1, !taffo.info !81, !taffo.constinfo !23
  br label %for.cond22, !llvm.loop !83

for.end29:                                        ; preds = %for.cond22
  call void @print_array(i32 noundef 20, i32 noundef 22, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @s_float, i32 0, i32 0), float* noundef getelementptr inbounds ([22 x float], [22 x float]* @q_float, i32 0, i32 0)), !taffo.constinfo !63
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, float* noundef %s, float* noundef %q) #0 !taffo.initweight !32 !taffo.funinfo !84 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !91, !taffo.constinfo !23
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !89
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !93
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !66
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !74
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !89
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !91, !taffo.constinfo !23
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !89
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !93
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !2
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !2
  %conv14 = fpext float %5 to double, !taffo.info !2
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv14), !taffo.constinfo !66
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !89, !taffo.constinfo !23
  br label %for.cond3, !llvm.loop !95

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !26 !taffo.funinfo !27 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !96 !taffo.funinfo !97 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !48, !taffo.initweight !100
  %0 = load float, float* %arrayidx, align 4, !taffo.info !48, !taffo.initweight !101
  %conv = sitofp i32 %factor to float, !taffo.info !102
  %mul = fmul float %0, %conv, !taffo.info !103, !taffo.initweight !106
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !48, !taffo.initweight !100
  store float %mul, float* %arrayidx1, align 4, !taffo.info !65, !taffo.initweight !101
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !96 !taffo.funinfo !108 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !53, !taffo.initweight !100
  %0 = load float, float* %arrayidx, align 4, !taffo.info !109, !taffo.initweight !101
  %conv = sitofp i32 %factor to float, !taffo.info !111
  %mul = fmul float %0, %conv, !taffo.info !112, !taffo.initweight !106
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !53, !taffo.initweight !100
  store float %mul, float* %arrayidx1, align 4, !taffo.info !69, !taffo.initweight !101
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.4(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.initweight !115 !taffo.funinfo !116 !taffo.sourceFunction !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.info !48, !taffo.initweight !100
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.info !117, !taffo.initweight !100, !taffo.constinfo !118
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !119

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ], !taffo.info !74
  %cmp2 = icmp slt i32 %i.1, %n, !taffo.info !89
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !51, !taffo.initweight !100
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !117, !taffo.initweight !100, !taffo.constinfo !118
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc21, %for.inc20 ], !taffo.info !74
  %cmp6 = icmp slt i32 %j.0, %m, !taffo.info !89
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %s, i32 %j.0, !taffo.info !48, !taffo.initweight !100
  %0 = load float, float* %arrayidx8, align 4, !taffo.info !48, !taffo.initweight !101
  %arrayidx9 = getelementptr inbounds float, float* %r, i32 %i.1, !taffo.info !44, !taffo.initweight !100
  %1 = load float, float* %arrayidx9, align 4, !taffo.info !120, !taffo.initweight !101
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !44, !taffo.initweight !100
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !44, !taffo.initweight !101
  %2 = load float, float* %arrayidx11, align 4, !taffo.info !120, !taffo.initweight !106
  %mul = fmul float %1, %2, !taffo.info !121, !taffo.initweight !106
  %add = fadd float %0, %mul, !taffo.info !123, !taffo.initweight !106
  %arrayidx12 = getelementptr inbounds float, float* %s, i32 %j.0, !taffo.info !48, !taffo.initweight !100
  store float %add, float* %arrayidx12, align 4, !taffo.info !65, !taffo.initweight !101
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !51, !taffo.initweight !100
  %3 = load float, float* %arrayidx13, align 4, !taffo.info !51, !taffo.initweight !101
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !44, !taffo.initweight !100
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !44, !taffo.initweight !101
  %4 = load float, float* %arrayidx15, align 4, !taffo.info !120, !taffo.initweight !106
  %arrayidx16 = getelementptr inbounds float, float* %p, i32 %j.0, !taffo.info !53, !taffo.initweight !100
  %5 = load float, float* %arrayidx16, align 4, !taffo.info !109, !taffo.initweight !101
  %mul17 = fmul float %4, %5, !taffo.info !125, !taffo.initweight !106
  %add18 = fadd float %3, %mul17, !taffo.info !127, !taffo.initweight !106
  %arrayidx19 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !51, !taffo.initweight !100
  store float %add18, float* %arrayidx19, align 4, !taffo.info !68, !taffo.initweight !101
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !89, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !129

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !89, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !130

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.initweight !115 !taffo.funinfo !131 !taffo.sourceFunction !61 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !132, !taffo.initweight !47
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !133, !taffo.initweight !59
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !134, !taffo.initweight !62

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %m, !taffo.info !136, !taffo.initweight !59
  %conv = sitofp i32 %rem to float, !taffo.info !138, !taffo.initweight !62
  %conv3 = sitofp i32 %m to float, !taffo.info !140
  %div = fdiv float %conv, %conv3, !taffo.info !141, !taffo.initweight !144
  %arrayidx = getelementptr inbounds float, float* %p, i32 %i.0, !taffo.info !145, !taffo.initweight !59
  store float %div, float* %arrayidx, align 4, !taffo.info !117, !taffo.initweight !62
  %arrayidx4 = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.info !146, !taffo.initweight !59
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !117, !taffo.initweight !62, !taffo.constinfo !118
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !147, !taffo.initweight !59, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !148

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ], !taffo.info !132, !taffo.initweight !47
  %cmp6 = icmp slt i32 %i.1, %n, !taffo.info !133, !taffo.initweight !59
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.info !134, !taffo.initweight !62

for.body8:                                        ; preds = %for.cond5
  %rem9 = srem i32 %i.1, %n, !taffo.info !149, !taffo.initweight !59
  %conv10 = sitofp i32 %rem9 to float, !taffo.info !150, !taffo.initweight !62
  %conv11 = sitofp i32 %n to float, !taffo.info !151
  %div12 = fdiv float %conv10, %conv11, !taffo.info !152, !taffo.initweight !144
  %arrayidx13 = getelementptr inbounds float, float* %r, i32 %i.1, !taffo.info !154, !taffo.initweight !59
  store float %div12, float* %arrayidx13, align 4, !taffo.info !117, !taffo.initweight !62
  %arrayidx14 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !155, !taffo.initweight !59
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.info !117, !taffo.initweight !62, !taffo.constinfo !118
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc26, %for.inc25 ], !taffo.info !149, !taffo.initweight !47
  %cmp16 = icmp slt i32 %j.0, %m, !taffo.info !133, !taffo.initweight !59
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.info !156, !taffo.initweight !62

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %j.0, 1, !taffo.info !158, !taffo.initweight !59, !taffo.constinfo !23
  %mul = mul nsw i32 %i.1, %add, !taffo.info !159, !taffo.initweight !59
  %rem19 = srem i32 %mul, %n, !taffo.info !149, !taffo.initweight !62
  %conv20 = sitofp i32 %rem19 to float, !taffo.info !150, !taffo.initweight !144
  %conv21 = sitofp i32 %n to float, !taffo.info !151
  %div22 = fdiv float %conv20, %conv21, !taffo.info !152, !taffo.initweight !100
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !154, !taffo.initweight !59
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.0, !taffo.info !154, !taffo.initweight !59
  store float %div22, float* %arrayidx24, align 4, !taffo.info !117, !taffo.initweight !62
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %inc26 = add nsw i32 %j.0, 1, !taffo.info !158, !taffo.initweight !59, !taffo.constinfo !23
  br label %for.cond15, !llvm.loop !161

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.info !147, !taffo.initweight !59, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !162

for.end30:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !163 !taffo.funinfo !164 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !89
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !74
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !89
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !91
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !44, !taffo.initweight !101
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !44, !taffo.initweight !106
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !120, !taffo.initweight !165
  %conv = sitofp i32 %factor to float, !taffo.info !111
  %mul = fmul float %1, %conv, !taffo.info !166, !taffo.initweight !168
  %2 = mul nsw i32 %i.0, %m, !taffo.info !91
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !44, !taffo.initweight !101
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !44, !taffo.initweight !106
  store float %mul, float* %arrayidx6, align 4, !taffo.info !58, !taffo.initweight !165
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !89, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !169

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !170

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x407B5D17603925BB}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x40782E8B9FDBD2FA}
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
!46 = !{double 0.000000e+00, double 0x401E8BA301216830}
!47 = !{i32 0}
!48 = !{!49, !1, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 23}
!50 = !{!"s"}
!51 = !{!49, !3, i1 false, i2 -1}
!52 = !{!"q"}
!53 = !{!45, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 7.600000e+00}
!55 = !{!45, i1 false, i1 false, i2 -1}
!56 = !{i32 1}
!57 = !{!49, i1 false, i1 false, i2 -1}
!58 = !{i1 false, !46, i1 false, i2 -1}
!59 = !{i32 2}
!60 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!61 = distinct !{null}
!62 = !{i32 3}
!63 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!64 = !{void (i32, i32, float*, i32)* @scale_2d}
!65 = !{i1 false, !1, i1 false, i2 -1}
!66 = !{i1 false, i1 false, i1 false, i1 false}
!67 = !{void (i32, float*, i32)* @scale_1d}
!68 = !{i1 false, !3, i1 false, i2 -1}
!69 = !{i1 false, !54, i1 false, i2 -1}
!70 = !{i1 false}
!71 = distinct !{null}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 0.000000e+00, double 2.100000e+01}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0.000000e+00, double 1.000000e+00}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 2.100000e+01}
!78 = distinct !{!78, !25}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 0.000000e+00, double 2.300000e+01}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 2.300000e+01}
!83 = distinct !{!83, !25}
!84 = !{i32 1, !85, i32 1, !87, i32 1, !0, i32 1, !2}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 2.000000e+01, double 2.000000e+01}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 2.200000e+01, double 2.200000e+01}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 1.000000e+00, double 1.000000e+00}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 0.000000e+00, double 0.000000e+00}
!93 = !{i1 false, i1 false, i1 false}
!94 = distinct !{!94, !25}
!95 = distinct !{!95, !25}
!96 = !{i32 -1, i32 2, i32 -1}
!97 = !{i32 1, !85, i32 1, !48, i32 1, !98}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 8.000000e+00, double 8.000000e+00}
!100 = !{i32 5}
!101 = !{i32 6}
!102 = !{!45, !99, i1 false, i2 1}
!103 = !{!104, !105, i1 false, i2 -1}
!104 = !{!"fixp", i32 32, i32 20}
!105 = !{double 0.000000e+00, double 0x40AB5D17603925BB}
!106 = !{i32 7}
!107 = distinct !{!107, !25}
!108 = !{i32 1, !85, i32 1, !53, i32 1, !98}
!109 = !{!110, !54, i1 false, i2 -1}
!110 = !{!"fixp", i32 32, i32 26}
!111 = !{!110, !99, i1 false, i2 1}
!112 = !{!110, !113, i1 false, i2 -1}
!113 = !{double 0.000000e+00, double 6.080000e+01}
!114 = distinct !{!114, !25}
!115 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!116 = !{i32 1, !85, i32 1, !87, i32 1, !44, i32 1, !48, i32 1, !51, i32 1, !53, i32 1, !44}
!117 = !{i1 false, i1 false, i1 false, i2 1}
!118 = !{!91, i1 false}
!119 = distinct !{!119, !25}
!120 = !{!110, !46, i1 false, i2 -1}
!121 = !{!110, !122, i1 false, i2 -1}
!122 = !{double 0.000000e+00, double 0x404D2832F576C918}
!123 = !{!49, !124, i1 false, i2 -1}
!124 = !{double 0.000000e+00, double 0x407F021DBEE7FEDE}
!125 = !{!110, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 0x404D04A7A779562D}
!127 = !{!49, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 0x407BCF2094CAFDC0}
!129 = distinct !{!129, !25}
!130 = distinct !{!130, !25}
!131 = !{i32 1, !85, i32 1, !87, i32 1, !44, i32 1, !44, i32 1, !53, i32 1, !48, i32 1, !51}
!132 = !{i1 false, !80, i1 false, i2 1}
!133 = !{i1 false, !75, i1 false, i2 1}
!134 = !{i1 false, !135, i1 false, i2 1}
!135 = !{double 0.000000e+00, double 2.200000e+01}
!136 = !{i1 false, !137, i1 false, i2 1}
!137 = !{double 0.000000e+00, double 1.900000e+01}
!138 = !{!139, !137, i1 false, i2 1}
!139 = !{!"fixp", i32 32, i32 27}
!140 = !{!139, !86, i1 false, i2 1}
!141 = !{!142, !143, i1 false, i2 1}
!142 = !{!"fixp", i32 32, i32 31}
!143 = !{double 0.000000e+00, double 0x3FEE666666666666}
!144 = !{i32 4}
!145 = !{!45, !54, i1 false, i2 1}
!146 = !{!49, !1, i1 false, i2 1}
!147 = !{i1 false, !82, i1 false, i2 1}
!148 = distinct !{!148, !25}
!149 = !{i1 false, !73, i1 false, i2 1}
!150 = !{!139, !73, i1 false, i2 1}
!151 = !{!139, !88, i1 false, i2 1}
!152 = !{!142, !153, i1 false, i2 1}
!153 = !{double 0.000000e+00, double 0x3FEE8BA2E8BA2E8C}
!154 = !{!45, !46, i1 false, i2 1}
!155 = !{!49, !3, i1 false, i2 1}
!156 = !{i1 false, !157, i1 false, i2 1}
!157 = !{double 0.000000e+00, double 2.000000e+01}
!158 = !{i1 false, !77, i1 false, i2 1}
!159 = !{i1 false, !160, i1 false, i2 1}
!160 = !{double 0.000000e+00, double 4.620000e+02}
!161 = distinct !{!161, !25}
!162 = distinct !{!162, !25}
!163 = !{i32 -1, i32 -1, i32 3, i32 -1}
!164 = !{i32 1, !87, i32 1, !85, i32 1, !44, i32 1, !98}
!165 = !{i32 8}
!166 = !{!110, !167, i1 false, i2 -1}
!167 = !{double 0.000000e+00, double 0x404E8BA301216830}
!168 = !{i32 9}
!169 = distinct !{!169, !25}
!170 = distinct !{!170, !25}
