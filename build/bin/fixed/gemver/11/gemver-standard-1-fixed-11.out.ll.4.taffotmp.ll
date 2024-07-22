; ModuleID = './build/bin/fixed/gemver/11/gemver-standard-1-fixed-11.out.ll.3.taffotmp.ll'
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
define dso_local void @timer_start() #0 !taffo.initweight !28 !taffo.funinfo !28 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !28 !taffo.funinfo !28 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.start !31 {
entry:
  %alpha = alloca float, align 4, !taffo.info !32, !taffo.initweight !35
  %beta = alloca float, align 4, !taffo.info !36, !taffo.initweight !35
  %A = alloca [20 x [20 x float]], align 4, !taffo.info !38, !taffo.initweight !35
  %u1 = alloca [20 x float], align 4, !taffo.info !39, !taffo.initweight !35
  %v1 = alloca [20 x float], align 4, !taffo.info !42, !taffo.initweight !35
  %u2 = alloca [20 x float], align 4, !taffo.info !44, !taffo.initweight !35
  %v2 = alloca [20 x float], align 4, !taffo.info !46, !taffo.initweight !35
  %w = alloca [20 x float], align 4, !taffo.info !48, !taffo.initweight !35, !taffo.target !50
  %x = alloca [20 x float], align 4, !taffo.info !51, !taffo.initweight !35
  %y = alloca [20 x float], align 4, !taffo.info !52, !taffo.initweight !35
  %z = alloca [20 x float], align 4, !taffo.info !54, !taffo.initweight !35
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !56, !taffo.initweight !57
  %beta2 = bitcast float* %beta to i8*, !taffo.info !56, !taffo.initweight !57
  %A3 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.info !56, !taffo.initweight !57
  %u14 = bitcast [20 x float]* %u1 to i8*, !taffo.info !58, !taffo.initweight !57
  %v15 = bitcast [20 x float]* %v1 to i8*, !taffo.info !58, !taffo.initweight !57
  %u26 = bitcast [20 x float]* %u2 to i8*, !taffo.info !58, !taffo.initweight !57
  %v27 = bitcast [20 x float]* %v2 to i8*, !taffo.info !58, !taffo.initweight !57
  %w8 = bitcast [20 x float]* %w to i8*, !taffo.info !59, !taffo.initweight !57, !taffo.target !50
  %x9 = bitcast [20 x float]* %x to i8*, !taffo.info !56, !taffo.initweight !57
  %y10 = bitcast [20 x float]* %y to i8*, !taffo.info !58, !taffo.initweight !57
  %z11 = bitcast [20 x float]* %z to i8*, !taffo.info !58, !taffo.initweight !57
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !38, !taffo.initweight !57
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.info !39, !taffo.initweight !57
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.info !42, !taffo.initweight !57
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.info !44, !taffo.initweight !57
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.info !46, !taffo.initweight !57
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.info !51, !taffo.initweight !57
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.info !52, !taffo.initweight !57
  %arraydecay19 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.info !54, !taffo.initweight !57
  call void @init_array.2(i32 noundef 20, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %arraydecay, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.info !60, !taffo.initweight !57, !taffo.constinfo !61, !taffo.originalCall !62
  call void @timer_start(), !taffo.constinfo !63
  %0 = load float, float* %alpha, align 4, !taffo.info !32, !taffo.initweight !57
  %1 = load float, float* %beta, align 4, !taffo.info !36, !taffo.initweight !57
  %arraydecay20 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !38, !taffo.initweight !57
  %arraydecay21 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.info !39, !taffo.initweight !57
  %arraydecay22 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.info !42, !taffo.initweight !57
  %arraydecay23 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.info !44, !taffo.initweight !57
  %arraydecay24 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.info !46, !taffo.initweight !57
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %arraydecay26 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.info !51, !taffo.initweight !57
  %arraydecay27 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.info !52, !taffo.initweight !57
  %arraydecay28 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.info !54, !taffo.initweight !57
  call void @kernel_gemver.1(i32 noundef 20, float noundef %0, float noundef %1, [20 x float]* noundef %arraydecay20, float* noundef %arraydecay21, float* noundef %arraydecay22, float* noundef %arraydecay23, float* noundef %arraydecay24, float* noundef %arraydecay25, float* noundef %arraydecay26, float* noundef %arraydecay27, float* noundef %arraydecay28), !taffo.info !60, !taffo.initweight !64, !taffo.constinfo !61, !taffo.originalCall !65
  call void @timer_stop(), !taffo.constinfo !63
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc40, %for.inc39 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !68
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %i.0, !taffo.info !51, !taffo.initweight !57
  %2 = load float, float* %arrayidx, align 4, !taffo.info !51, !taffo.initweight !64
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %2, float* %arrayidx29, align 4, !taffo.info !70, !taffo.initweight !71
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 %i.0, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %3 = load float, float* %arrayidx30, align 4, !taffo.info !48, !taffo.initweight !64, !taffo.target !50
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !2
  store float %3, float* %arrayidx31, align 4, !taffo.info !72, !taffo.initweight !71, !taffo.target !50
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp33 = icmp slt i32 %j.0, 20, !taffo.info !68
  br i1 %cmp33, label %for.body34, label %for.end

for.body34:                                       ; preds = %for.cond32
  %arrayidx35 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %i.0, !taffo.info !38, !taffo.initweight !57
  %arrayidx36 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx35, i32 0, i32 %j.0, !taffo.info !38, !taffo.initweight !64
  %4 = load float, float* %arrayidx36, align 4, !taffo.info !38, !taffo.initweight !71
  %arrayidx37 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %j.0, !taffo.info !4
  store float %4, float* %arrayidx38, align 4, !taffo.info !75, !taffo.initweight !76
  br label %for.inc

for.inc:                                          ; preds = %for.body34
  %inc = add nsw i32 %j.0, 1, !taffo.info !77, !taffo.constinfo !25
  br label %for.cond32, !llvm.loop !79

for.end:                                          ; preds = %for.cond32
  br label %for.inc39

for.inc39:                                        ; preds = %for.end
  %inc40 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !82

for.end41:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !83
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !84 !taffo.funinfo !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !88
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !90
  %add = add nsw i32 %mul, %j.0, !taffo.info !90
  %rem = srem i32 %add, 20, !taffo.info !90, !taffo.constinfo !25
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !88
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !92
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !4
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !4
  %conv = fpext float %2 to double, !taffo.info !4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv), !taffo.constinfo !93
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !94

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !95

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !68
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !88
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !90, !taffo.constinfo !25
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !88
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !92
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !0
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !0
  %conv21 = fpext float %5 to double, !taffo.info !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv21), !taffo.constinfo !93
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond10, !llvm.loop !96

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !68
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !88
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !90, !taffo.constinfo !25
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !88
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !92
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !2
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !2
  %conv37 = fpext float %8 to double, !taffo.info !2
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv37), !taffo.constinfo !93
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond26, !llvm.loop !97

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !29 !taffo.funinfo !30 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.1(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !98 !taffo.funinfo !99 !taffo.sourceFunction !65 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !88
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !38, !taffo.initweight !100
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !38, !taffo.initweight !101
  %0 = load float, float* %arrayidx4, align 4, !taffo.info !38, !taffo.initweight !102
  %arrayidx5 = getelementptr inbounds float, float* %u1, i32 %i.0, !taffo.info !39, !taffo.initweight !100
  %1 = load float, float* %arrayidx5, align 4, !taffo.info !39, !taffo.initweight !101
  %arrayidx6 = getelementptr inbounds float, float* %v1, i32 %j.0, !taffo.info !42, !taffo.initweight !100
  %2 = load float, float* %arrayidx6, align 4, !taffo.info !42, !taffo.initweight !101
  %mul = fmul float %1, %2, !taffo.info !103, !taffo.initweight !102
  %add = fadd float %0, %mul, !taffo.info !105, !taffo.initweight !107
  %arrayidx7 = getelementptr inbounds float, float* %u2, i32 %i.0, !taffo.info !44, !taffo.initweight !100
  %3 = load float, float* %arrayidx7, align 4, !taffo.info !44, !taffo.initweight !101
  %arrayidx8 = getelementptr inbounds float, float* %v2, i32 %j.0, !taffo.info !46, !taffo.initweight !100
  %4 = load float, float* %arrayidx8, align 4, !taffo.info !46, !taffo.initweight !101
  %mul9 = fmul float %3, %4, !taffo.info !108, !taffo.initweight !102
  %add10 = fadd float %add, %mul9, !taffo.info !110, !taffo.initweight !107
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !38, !taffo.initweight !100
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.info !38, !taffo.initweight !101
  store float %add10, float* %arrayidx12, align 4, !taffo.info !75, !taffo.initweight !102
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !112

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !113

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !68
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !88
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !68
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !88
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !51, !taffo.initweight !100
  %5 = load float, float* %arrayidx22, align 4, !taffo.info !51, !taffo.initweight !101
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1, !taffo.info !38, !taffo.initweight !100
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %i.1, !taffo.info !38, !taffo.initweight !101
  %6 = load float, float* %arrayidx24, align 4, !taffo.info !38, !taffo.initweight !102
  %mul25 = fmul float %beta, %6, !taffo.info !114, !taffo.initweight !100
  %arrayidx26 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.info !52, !taffo.initweight !100
  %7 = load float, float* %arrayidx26, align 4, !taffo.info !52, !taffo.initweight !101
  %mul27 = fmul float %mul25, %7, !taffo.info !116, !taffo.initweight !101
  %add28 = fadd float %5, %mul27, !taffo.info !118, !taffo.initweight !102
  %arrayidx29 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !51, !taffo.initweight !100
  store float %add28, float* %arrayidx29, align 4, !taffo.info !70, !taffo.initweight !101
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond19, !llvm.loop !120

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond16, !llvm.loop !121

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !68
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !88
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.info !51, !taffo.initweight !100
  %8 = load float, float* %arrayidx39, align 4, !taffo.info !51, !taffo.initweight !101
  %arrayidx40 = getelementptr inbounds float, float* %z, i32 %i.2, !taffo.info !54, !taffo.initweight !100
  %9 = load float, float* %arrayidx40, align 4, !taffo.info !122, !taffo.initweight !101
  %add41 = fadd float %8, %9, !taffo.info !123, !taffo.initweight !102
  %arrayidx42 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.info !51, !taffo.initweight !100
  store float %add41, float* %arrayidx42, align 4, !taffo.info !70, !taffo.initweight !101
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond36, !llvm.loop !125

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !68
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !88
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !68
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !88
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.info !48, !taffo.initweight !100
  %10 = load float, float* %arrayidx52, align 4, !taffo.info !48, !taffo.initweight !101
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.3, !taffo.info !38, !taffo.initweight !100
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i32 0, i32 %j.2, !taffo.info !38, !taffo.initweight !101
  %11 = load float, float* %arrayidx54, align 4, !taffo.info !38, !taffo.initweight !102
  %mul55 = fmul float %alpha, %11, !taffo.info !126, !taffo.initweight !100
  %arrayidx56 = getelementptr inbounds float, float* %x, i32 %j.2, !taffo.info !51, !taffo.initweight !100
  %12 = load float, float* %arrayidx56, align 4, !taffo.info !51, !taffo.initweight !101
  %mul57 = fmul float %mul55, %12, !taffo.info !128, !taffo.initweight !101
  %add58 = fadd float %10, %mul57, !taffo.info !130, !taffo.initweight !102
  %arrayidx59 = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.info !48, !taffo.initweight !100
  store float %add58, float* %arrayidx59, align 4, !taffo.info !72, !taffo.initweight !101
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond49, !llvm.loop !132

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !88, !taffo.constinfo !25
  br label %for.cond46, !llvm.loop !133

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !134 !taffo.funinfo !99 !taffo.sourceFunction !62 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !60, !taffo.initweight !76, !taffo.constinfo !135
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !137, !taffo.initweight !76, !taffo.constinfo !138
  %conv = sitofp i32 %n to float, !taffo.info !141, !taffo.initweight !64
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.info !142, !taffo.initweight !35
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !144, !taffo.initweight !64
  br i1 %cmp, label %for.body, label %for.end53, !taffo.info !142, !taffo.initweight !71

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.info !145, !taffo.initweight !64
  %div = fdiv float %conv5, %conv, !taffo.info !146, !taffo.initweight !64
  %arrayidx = getelementptr inbounds float, float* %u1, i32 %i.0, !taffo.info !147, !taffo.initweight !64
  store float %div, float* %arrayidx, align 4, !taffo.info !148, !taffo.initweight !71
  %add = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !64, !taffo.constinfo !25
  %conv6 = sitofp i32 %add to float, !taffo.info !150, !taffo.initweight !71
  %div7 = fdiv float %conv6, %conv, !taffo.info !151, !taffo.initweight !64
  %conv8 = fpext float %div7 to double, !taffo.info !151, !taffo.initweight !71
  %div9 = fdiv double %conv8, 2.000000e+00, !taffo.info !153, !taffo.initweight !76, !taffo.constinfo !155
  %conv10 = fptrunc double %div9 to float, !taffo.info !156, !taffo.initweight !100
  %arrayidx11 = getelementptr inbounds float, float* %u2, i32 %i.0, !taffo.info !158, !taffo.initweight !64
  store float %conv10, float* %arrayidx11, align 4, !taffo.info !148, !taffo.initweight !71
  %add12 = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !64, !taffo.constinfo !25
  %conv13 = sitofp i32 %add12 to float, !taffo.info !150, !taffo.initweight !71
  %div14 = fdiv float %conv13, %conv, !taffo.info !151, !taffo.initweight !64
  %conv15 = fpext float %div14 to double, !taffo.info !151, !taffo.initweight !71
  %div16 = fdiv double %conv15, 4.000000e+00, !taffo.info !159, !taffo.initweight !76, !taffo.constinfo !161
  %conv17 = fptrunc double %div16 to float, !taffo.info !164, !taffo.initweight !100
  %arrayidx18 = getelementptr inbounds float, float* %v1, i32 %i.0, !taffo.info !166, !taffo.initweight !64
  store float %conv17, float* %arrayidx18, align 4, !taffo.info !148, !taffo.initweight !71
  %add19 = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !64, !taffo.constinfo !25
  %conv20 = sitofp i32 %add19 to float, !taffo.info !150, !taffo.initweight !71
  %div21 = fdiv float %conv20, %conv, !taffo.info !151, !taffo.initweight !64
  %conv22 = fpext float %div21 to double, !taffo.info !151, !taffo.initweight !71
  %div23 = fdiv double %conv22, 6.000000e+00, !taffo.info !167, !taffo.initweight !76, !taffo.constinfo !169
  %conv24 = fptrunc double %div23 to float, !taffo.info !172, !taffo.initweight !100
  %arrayidx25 = getelementptr inbounds float, float* %v2, i32 %i.0, !taffo.info !174, !taffo.initweight !64
  store float %conv24, float* %arrayidx25, align 4, !taffo.info !148, !taffo.initweight !71
  %add26 = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !64, !taffo.constinfo !25
  %conv27 = sitofp i32 %add26 to float, !taffo.info !150, !taffo.initweight !71
  %div28 = fdiv float %conv27, %conv, !taffo.info !151, !taffo.initweight !64
  %conv29 = fpext float %div28 to double, !taffo.info !151, !taffo.initweight !71
  %div30 = fdiv double %conv29, 8.000000e+00, !taffo.info !175, !taffo.initweight !76, !taffo.constinfo !177
  %conv31 = fptrunc double %div30 to float, !taffo.info !180, !taffo.initweight !100
  %arrayidx32 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !182, !taffo.initweight !64
  store float %conv31, float* %arrayidx32, align 4, !taffo.info !148, !taffo.initweight !71
  %add33 = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !64, !taffo.constinfo !25
  %conv34 = sitofp i32 %add33 to float, !taffo.info !150, !taffo.initweight !71
  %div35 = fdiv float %conv34, %conv, !taffo.info !151, !taffo.initweight !64
  %conv36 = fpext float %div35 to double, !taffo.info !151, !taffo.initweight !71
  %div37 = fdiv double %conv36, 9.000000e+00, !taffo.info !183, !taffo.initweight !76, !taffo.constinfo !185
  %conv38 = fptrunc double %div37 to float, !taffo.info !188, !taffo.initweight !100
  %arrayidx39 = getelementptr inbounds float, float* %z, i32 %i.0, !taffo.info !190, !taffo.initweight !64
  store float %conv38, float* %arrayidx39, align 4, !taffo.info !148, !taffo.initweight !71
  %arrayidx40 = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !191, !taffo.initweight !64
  store float 0.000000e+00, float* %arrayidx40, align 4, !taffo.info !148, !taffo.initweight !71, !taffo.constinfo !192
  %arrayidx41 = getelementptr inbounds float, float* %w, i32 %i.0, !taffo.info !193, !taffo.initweight !64
  store float 0.000000e+00, float* %arrayidx41, align 4, !taffo.info !148, !taffo.initweight !71, !taffo.constinfo !192
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !142, !taffo.initweight !35
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.info !144, !taffo.initweight !64
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.info !142, !taffo.initweight !71

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !194, !taffo.initweight !64
  %rem = srem i32 %mul, %n, !taffo.info !196, !taffo.initweight !71
  %conv46 = sitofp i32 %rem to float, !taffo.info !198, !taffo.initweight !76
  %conv47 = sitofp i32 %n to float, !taffo.info !141
  %div48 = fdiv float %conv46, %conv47, !taffo.info !39, !taffo.initweight !100
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !199, !taffo.initweight !64
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i32 %j.0, !taffo.info !199, !taffo.initweight !64
  store float %div48, float* %arrayidx50, align 4, !taffo.info !148, !taffo.initweight !71
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.info !149, !taffo.initweight !64, !taffo.constinfo !25
  br label %for.cond42, !llvm.loop !200

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !64, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !201

for.end53:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x3FF21F5BE5D9E40D}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x4032341E9AF5BA2C}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 0x3FF1D9999999999A}
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
!28 = !{}
!29 = !{i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false}
!31 = !{i1 true}
!32 = !{!33, !34, i1 false, i2 -1}
!33 = !{!"fixp", i32 32, i32 30}
!34 = !{double 1.500000e+00, double 1.500000e+00}
!35 = !{i32 0}
!36 = !{!33, !37, i1 false, i2 -1}
!37 = !{double 1.200000e+00, double 1.200000e+00}
!38 = !{!33, !5, i1 false, i2 -1}
!39 = !{!40, !41, i1 false, i2 -1}
!40 = !{!"fixp", i32 32, i32 31}
!41 = !{double 0.000000e+00, double 0x3FEE666666666666}
!42 = !{!40, !43, i1 false, i2 -1}
!43 = !{double 1.250000e-02, double 2.500000e-01}
!44 = !{!40, !45, i1 false, i2 -1}
!45 = !{double 2.500000e-02, double 5.000000e-01}
!46 = !{!40, !47, i1 false, i2 -1}
!47 = !{double 8.333000e-03, double 1.666670e-01}
!48 = !{!49, !3, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 27}
!50 = !{!"w"}
!51 = !{!33, !1, i1 false, i2 -1}
!52 = !{!40, !53, i1 false, i2 -1}
!53 = !{double 6.250000e-03, double 1.250000e-01}
!54 = !{!40, !55, i1 false, i2 -1}
!55 = !{double 5.556000e-03, double 1.111110e-01}
!56 = !{!33, i1 false, i1 false, i2 -1}
!57 = !{i32 1}
!58 = !{!40, i1 false, i1 false, i2 -1}
!59 = !{!49, i1 false, i1 false, i2 -1}
!60 = !{i1 false, !34, i1 false, i2 -1}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = distinct !{null}
!63 = !{i1 false}
!64 = !{i32 2}
!65 = distinct !{null}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 2.100000e+01}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 1.000000e+00}
!70 = !{i1 false, !1, i1 false, i2 -1}
!71 = !{i32 3}
!72 = !{i1 false, !3, i1 false, i2 -1}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 4.410000e+02}
!75 = !{i1 false, !5, i1 false, i2 -1}
!76 = !{i32 4}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 1.000000e+00, double 4.410000e+02}
!79 = distinct !{!79, !27}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.000000e+00, double 2.100000e+01}
!82 = distinct !{!82, !27}
!83 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!84 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!85 = !{i32 1, !86, i32 1, !2, i32 1, !0, i32 1, !4}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 2.000000e+01, double 2.000000e+01}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.000000e+00, double 1.000000e+00}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 0.000000e+00, double 0.000000e+00}
!92 = !{i1 false, i1 false, i1 false}
!93 = !{i1 false, i1 false, i1 false, i1 false}
!94 = distinct !{!94, !27}
!95 = distinct !{!95, !27}
!96 = distinct !{!96, !27}
!97 = distinct !{!97, !27}
!98 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!99 = !{i32 1, !86, i32 1, !32, i32 1, !36, i32 1, !38, i32 1, !39, i32 1, !42, i32 1, !44, i32 1, !46, i32 1, !48, i32 1, !51, i32 1, !52, i32 1, !54}
!100 = !{i32 5}
!101 = !{i32 6}
!102 = !{i32 7}
!103 = !{!33, !104, i1 false, i2 -1}
!104 = !{double 0.000000e+00, double 2.375000e-01}
!105 = !{!33, !106, i1 false, i2 -1}
!106 = !{double 0.000000e+00, double 0x3FF5A66666666667}
!107 = !{i32 8}
!108 = !{!33, !109, i1 false, i2 -1}
!109 = !{double 2.083250e-04, double 8.333350e-02}
!110 = !{!33, !111, i1 false, i2 -1}
!111 = !{double 2.083250e-04, double 0x3FF6FBBBE878FABE}
!112 = distinct !{!112, !27}
!113 = distinct !{!113, !27}
!114 = !{!33, !115, i1 false, i2 -1}
!115 = !{double 0.000000e+00, double 1.338750e+00}
!116 = !{!33, !117, i1 false, i2 -1}
!117 = !{double 0.000000e+00, double 0x3FC56B851EB851EC}
!118 = !{!33, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 0x3FF4CCCC89B0EE4A}
!120 = distinct !{!120, !27}
!121 = distinct !{!121, !27}
!122 = !{!33, !55, i1 false, i2 -1}
!123 = !{!33, !124, i1 false, i2 -1}
!124 = !{double 5.556000e-03, double 0x3FF3E67839CD8128}
!125 = distinct !{!125, !27}
!126 = !{!33, !127, i1 false, i2 -1}
!127 = !{double 0.000000e+00, double 0x3FFAC66666666667}
!128 = !{!33, !129, i1 false, i2 -1}
!129 = !{double 0.000000e+00, double 0x3FFE53AD62A43A08}
!130 = !{!49, !131, i1 false, i2 -1}
!131 = !{double 0.000000e+00, double 0x40341959711FFDCC}
!132 = distinct !{!132, !27}
!133 = distinct !{!133, !27}
!134 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!135 = !{!136, i1 false}
!136 = !{i1 false, !34, i1 false, i2 0}
!137 = !{i1 false, !37, i1 false, i2 -1}
!138 = !{!139, i1 false}
!139 = !{i1 false, !140, i1 false, i2 0}
!140 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!141 = !{!49, !87, i1 false, i2 1}
!142 = !{i1 false, !143, i1 false, i2 -1}
!143 = !{double 0.000000e+00, double 2.000000e+01}
!144 = !{i1 false, !69, i1 false, i2 -1}
!145 = !{!49, !143, i1 false, i2 -1}
!146 = !{!40, !69, i1 false, i2 1}
!147 = !{!40, !41, i1 false, i2 1}
!148 = !{i1 false, i1 false, i1 false, i2 1}
!149 = !{i1 false, !81, i1 false, i2 -1}
!150 = !{!49, !81, i1 false, i2 -1}
!151 = !{!33, !152, i1 false, i2 1}
!152 = !{double 5.000000e-02, double 1.050000e+00}
!153 = !{!33, !154, i1 false, i2 1}
!154 = !{double 2.500000e-02, double 5.250000e-01}
!155 = !{i1 false, !23}
!156 = !{!40, !157, i1 false, i2 1}
!157 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!158 = !{!40, !45, i1 false, i2 1}
!159 = !{!33, !160, i1 false, i2 1}
!160 = !{double 1.250000e-02, double 2.625000e-01}
!161 = !{i1 false, !162}
!162 = !{i1 false, !163, i1 false, i2 0}
!163 = !{double 4.000000e+00, double 4.000000e+00}
!164 = !{!40, !165, i1 false, i2 1}
!165 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!166 = !{!40, !43, i1 false, i2 1}
!167 = !{!33, !168, i1 false, i2 1}
!168 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!169 = !{i1 false, !170}
!170 = !{i1 false, !171, i1 false, i2 0}
!171 = !{double 6.000000e+00, double 6.000000e+00}
!172 = !{!40, !173, i1 false, i2 1}
!173 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!174 = !{!40, !47, i1 false, i2 1}
!175 = !{!33, !176, i1 false, i2 1}
!176 = !{double 6.250000e-03, double 1.312500e-01}
!177 = !{i1 false, !178}
!178 = !{i1 false, !179, i1 false, i2 0}
!179 = !{double 8.000000e+00, double 8.000000e+00}
!180 = !{!40, !181, i1 false, i2 1}
!181 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!182 = !{!40, !53, i1 false, i2 1}
!183 = !{!33, !184, i1 false, i2 1}
!184 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!185 = !{i1 false, !186}
!186 = !{i1 false, !187, i1 false, i2 0}
!187 = !{double 9.000000e+00, double 9.000000e+00}
!188 = !{!40, !189, i1 false, i2 1}
!189 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!190 = !{!40, !55, i1 false, i2 1}
!191 = !{!33, !1, i1 false, i2 1}
!192 = !{!90, i1 false}
!193 = !{!49, !3, i1 false, i2 1}
!194 = !{i1 false, !195, i1 false, i2 -1}
!195 = !{double 0.000000e+00, double 4.000000e+02}
!196 = !{i1 false, !197, i1 false, i2 -1}
!197 = !{double 0.000000e+00, double 1.900000e+01}
!198 = !{!49, !197, i1 false, i2 -1}
!199 = !{!33, !5, i1 false, i2 1}
!200 = distinct !{!200, !27}
!201 = distinct !{!201, !27}
